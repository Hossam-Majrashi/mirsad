#!/usr/bin/env bash

set -e

# ----------------------------------------------------
# 0. Setup and Variables
# ----------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

APP_NAME="mirsad"
APP_TITLE="Mirsad"
DESCRIPTION="Multi-Engine File Security Scanner"
VERSION="1.0.0"
PACKAGE_ID="com.h.mirsad"
DIST_DIR="$SCRIPT_DIR/dist"
BUILD_TMP="/tmp/mirsad_linux_pkg_stage_$$"
ICON_SRC="$SCRIPT_DIR/assets/icons/app_icon.png"

echo -e "${BLUE}====================================================${NC}"
echo -e "${BLUE}     Mirsad Linux Multi-Target Packaging Script     ${NC}"
echo -e "${BLUE}====================================================${NC}"

# Target flags (all true by default)
BUILD_DEB=true
BUILD_RPM=true
BUILD_ARCH=true
BUILD_APPIMAGE=true
BUILD_TAR=true

# Parse arguments if specific package requested
if [ $# -gt 0 ]; then
    BUILD_DEB=false
    BUILD_RPM=false
    BUILD_ARCH=false
    BUILD_APPIMAGE=false
    BUILD_TAR=false
    for arg in "$@"; do
        case "$arg" in
            --deb|deb) BUILD_DEB=true ;;
            --rpm|rpm) BUILD_RPM=true ;;
            --arch|arch) BUILD_ARCH=true ;;
            --appimage|appimage) BUILD_APPIMAGE=true ;;
            --tar|tar|--tarball) BUILD_TAR=true ;;
            --all|all)
                BUILD_DEB=true
                BUILD_RPM=true
                BUILD_ARCH=true
                BUILD_APPIMAGE=true
                BUILD_TAR=true
                ;;
            *)
                echo -e "${YELLOW}Unknown option: $arg${NC}"
                ;;
        esac
    done
fi

mkdir -p "$DIST_DIR"
rm -rf "$BUILD_TMP"
mkdir -p "$BUILD_TMP"

# ----------------------------------------------------
# 1. Build Flutter Linux Release Bundle
# ----------------------------------------------------
BUNDLE_DIR="$SCRIPT_DIR/build/linux/x64/release/bundle"
if [ ! -f "$BUNDLE_DIR/$APP_NAME" ]; then
    echo -e "\n${BLUE}==> Building Flutter Linux Release Bundle...${NC}"
    flutter build linux --release
fi

if [ ! -d "$BUNDLE_DIR" ]; then
    echo -e "${RED}Error: Linux bundle not found at $BUNDLE_DIR${NC}"
    exit 1
fi

# ----------------------------------------------------
# A. DEBIAN PACKAGE (.deb)
# ----------------------------------------------------
if [ "$BUILD_DEB" = true ]; then
    echo -e "\n${BLUE}==> Packaging Debian Package (.deb)...${NC}"
    DEB_STAGE="$BUILD_TMP/deb_stage"
    rm -rf "$DEB_STAGE"
    mkdir -p "$DEB_STAGE/DEBIAN"
    mkdir -p "$DEB_STAGE/opt/$APP_NAME"
    mkdir -p "$DEB_STAGE/usr/bin"
    mkdir -p "$DEB_STAGE/usr/share/applications"
    mkdir -p "$DEB_STAGE/usr/share/icons/hicolor/512x512/apps"

    cp -r "$BUNDLE_DIR"/* "$DEB_STAGE/opt/$APP_NAME/"

    cat << EOF > "$DEB_STAGE/usr/bin/$APP_NAME"
#!/bin/sh
exec /opt/$APP_NAME/$APP_NAME "\$@"
EOF
    chmod +x "$DEB_STAGE/usr/bin/$APP_NAME"

    cat << EOF > "$DEB_STAGE/usr/share/applications/$PACKAGE_ID.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$PACKAGE_ID
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
Actions=ScanFile;

[Desktop Action ScanFile]
Name=Scan with Mirsad
Name[ar]=فحص بواسطة مرصاد
Exec=$APP_NAME %f
Icon=$PACKAGE_ID
EOF

    if [ -f "$ICON_SRC" ]; then
        cp "$ICON_SRC" "$DEB_STAGE/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png"
    fi

    cat << EOF > "$DEB_STAGE/DEBIAN/control"
Package: $APP_NAME
Version: $VERSION
Section: utils
Priority: optional
Architecture: amd64
Maintainer: Juthoor Studio <Hossam.Majrashi@gmail.com>
Description: $DESCRIPTION
 Mirsad is an advanced multi-engine defensive file security scanner.
EOF

    DEB_OUT="$DIST_DIR/${APP_NAME}_${VERSION}_amd64.deb"
    if command -v dpkg-deb &> /dev/null; then
        dpkg-deb --build --root-owner-group "$DEB_STAGE" "$DEB_OUT" > /dev/null
        echo -e "${GREEN}✓ Created $DEB_OUT${NC}"
    elif command -v ar &> /dev/null; then
        rm -f "$DEB_OUT"
        echo "2.0" > "$DEB_STAGE/debian-binary"
        tar -czf "$DEB_STAGE/control.tar.gz" -C "$DEB_STAGE/DEBIAN" .
        tar -czf "$DEB_STAGE/data.tar.gz" -C "$DEB_STAGE" opt usr
        ar -rc "$DEB_OUT" "$DEB_STAGE/debian-binary" "$DEB_STAGE/control.tar.gz" "$DEB_STAGE/data.tar.gz"
        echo -e "${GREEN}✓ Created $DEB_OUT (via ar)${NC}"
    else
        echo -e "${YELLOW}Notice: dpkg-deb not found. Creating tar.gz fallback for deb...${NC}"
        tar czf "$DEB_OUT" -C "$DEB_STAGE" .
        echo -e "${GREEN}✓ Created $DEB_OUT${NC}"
    fi
fi

# ----------------------------------------------------
# B. RPM PACKAGE (.rpm) — dnf/yum/zypper compatible
# ----------------------------------------------------
if [ "$BUILD_RPM" = true ]; then
    echo -e "\n${BLUE}==> Packaging RPM Package (.rpm) for DNF/YUM/Zypper...${NC}"
    RPM_ROOT="$BUILD_TMP/rpmbuild"
    mkdir -p "$RPM_ROOT"/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
    RPM_BUILDROOT="$RPM_ROOT/BUILDROOT/${APP_NAME}-${VERSION}-1.x86_64"
    mkdir -p "$RPM_BUILDROOT/opt/$APP_NAME"
    mkdir -p "$RPM_BUILDROOT/usr/bin"
    mkdir -p "$RPM_BUILDROOT/usr/share/applications"
    mkdir -p "$RPM_BUILDROOT/usr/share/icons/hicolor/512x512/apps"

    cp -r "$BUNDLE_DIR"/* "$RPM_BUILDROOT/opt/$APP_NAME/"

    cat << EOF > "$RPM_BUILDROOT/usr/bin/$APP_NAME"
#!/bin/sh
exec /opt/$APP_NAME/$APP_NAME "\$@"
EOF
    chmod +x "$RPM_BUILDROOT/usr/bin/$APP_NAME"

    cat << EOF > "$RPM_BUILDROOT/usr/share/applications/$PACKAGE_ID.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$PACKAGE_ID
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
Actions=ScanFile;

[Desktop Action ScanFile]
Name=Scan with Mirsad
Name[ar]=فحص بواسطة مرصاد
Exec=$APP_NAME %f
Icon=$PACKAGE_ID
EOF

    if [ -f "$ICON_SRC" ]; then
        cp "$ICON_SRC" "$RPM_BUILDROOT/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png"
    fi

    cat << EOF > "$RPM_ROOT/SPECS/$APP_NAME.spec"
Name:           $APP_NAME
Version:        $VERSION
Release:        1
Summary:        $DESCRIPTION
License:        MIT
URL:            https://hossam-majrashi.github.io/Works/
AutoReqProv:    no

%description
$DESCRIPTION

%install
mkdir -p %{buildroot}/opt/$APP_NAME
mkdir -p %{buildroot}/usr/bin
mkdir -p %{buildroot}/usr/share/applications
mkdir -p %{buildroot}/usr/share/icons/hicolor/512x512/apps

cp -r $BUNDLE_DIR/* %{buildroot}/opt/$APP_NAME/

cat << 'EOS' > %{buildroot}/usr/bin/$APP_NAME
#!/bin/sh
exec /opt/$APP_NAME/$APP_NAME "\$@"
EOS
chmod +x %{buildroot}/usr/bin/$APP_NAME

cat << 'EOS' > %{buildroot}/usr/share/applications/$PACKAGE_ID.desktop
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$PACKAGE_ID
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
Actions=ScanFile;

[Desktop Action ScanFile]
Name=Scan with Mirsad
Name[ar]=فحص بواسطة مرصاد
Exec=$APP_NAME %f
Icon=$PACKAGE_ID
EOS

if [ -f "$ICON_SRC" ]; then
    cp "$ICON_SRC" %{buildroot}/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png
fi

%files
/opt/$APP_NAME
/usr/bin/$APP_NAME
/usr/share/applications/$PACKAGE_ID.desktop
/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png
EOF

    RPM_OUT="$DIST_DIR/${APP_NAME}-${VERSION}-1.x86_64.rpm"
    if command -v rpmbuild &> /dev/null; then
        mkdir -p /tmp/rpmdb
        rpmbuild --define "_topdir $RPM_ROOT" --define "_dbpath /tmp/rpmdb" --define "_build_id_links none" --target x86_64 -bb "$RPM_ROOT/SPECS/$APP_NAME.spec" > /dev/null 2>&1 || true
        FOUND_RPM=$(find "$RPM_ROOT/RPMS" -name "*.rpm" 2>/dev/null | head -n 1)
        if [ -n "$FOUND_RPM" ] && [ -f "$FOUND_RPM" ]; then
            cp "$FOUND_RPM" "$RPM_OUT"
            echo -e "${GREEN}✓ Created $RPM_OUT${NC}"
        else
            tar czf "$RPM_OUT" -C "$RPM_BUILDROOT" .
            echo -e "${GREEN}✓ Created $RPM_OUT (standalone bundle)${NC}"
        fi
    else
        echo -e "${YELLOW}Notice: rpmbuild not installed. Packaging RPM tarball bundle...${NC}"
        tar czf "$RPM_OUT" -C "$RPM_BUILDROOT" .
        echo -e "${GREEN}✓ Created $RPM_OUT${NC}"
    fi
fi

# ----------------------------------------------------
# C. ARCH LINUX PACKAGE (pkg.tar.zst)
# ----------------------------------------------------
if [ "$BUILD_ARCH" = true ]; then
    echo -e "\n${BLUE}==> Packaging Arch Linux Package (.pkg.tar.zst)...${NC}"
    ARCH_STAGE="$BUILD_TMP/arch_stage"
    rm -rf "$ARCH_STAGE"
    mkdir -p "$ARCH_STAGE"
    ARCH_OUT="$DIST_DIR/${APP_NAME}-${VERSION}-1-x86_64.pkg.tar.zst"

    if command -v makepkg &> /dev/null; then
        cat << EOF > "$ARCH_STAGE/PKGBUILD"
pkgname=$APP_NAME
pkgver=$VERSION
pkgrel=1
pkgdesc="$DESCRIPTION"
arch=('x86_64')
url="https://hossam-majrashi.github.io/Works/"
license=('MIT')
depends=('gtk3')

package() {
    mkdir -p "\$pkgdir/opt/$APP_NAME"
    cp -r "$BUNDLE_DIR"/* "\$pkgdir/opt/$APP_NAME/"

    mkdir -p "\$pkgdir/usr/bin"
    cat << 'EOS' > "\$pkgdir/usr/bin/$APP_NAME"
#!/bin/sh
exec /opt/$APP_NAME/$APP_NAME "\$@"
EOS
    chmod +x "\$pkgdir/usr/bin/$APP_NAME"

    mkdir -p "\$pkgdir/usr/share/applications"
    cat << 'EOS' > "\$pkgdir/usr/share/applications/$PACKAGE_ID.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$PACKAGE_ID
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
Actions=ScanFile;

[Desktop Action ScanFile]
Name=Scan with Mirsad
Name[ar]=فحص بواسطة مرصاد
Exec=$APP_NAME %f
Icon=$PACKAGE_ID
EOS

    mkdir -p "\$pkgdir/usr/share/icons/hicolor/512x512/apps"
    if [ -f "$ICON_SRC" ]; then
        cp "$ICON_SRC" "\$pkgdir/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png"
    fi
}
EOF
        (
            cd "$ARCH_STAGE"
            makepkg -f --nodeps > /dev/null 2>&1
        )
        PKG_FILE=$(find "$ARCH_STAGE" -name "*.pkg.tar.zst" 2>/dev/null | head -n 1)
        if [ -n "$PKG_FILE" ] && [ -f "$PKG_FILE" ]; then
            cp "$PKG_FILE" "$ARCH_OUT"
            echo -e "${GREEN}✓ Created $ARCH_OUT${NC}"
        else
            echo -e "${RED}Error: makepkg failed to produce package.${NC}"
            exit 1
        fi
    else
        ARCH_PKG_DIR="$ARCH_STAGE/pkg"
        mkdir -p "$ARCH_PKG_DIR/opt/$APP_NAME"
        mkdir -p "$ARCH_PKG_DIR/usr/bin"
        mkdir -p "$ARCH_PKG_DIR/usr/share/applications"
        mkdir -p "$ARCH_PKG_DIR/usr/share/icons/hicolor/512x512/apps"

        cp -r "$BUNDLE_DIR"/* "$ARCH_PKG_DIR/opt/$APP_NAME/"

        cat << EOF > "$ARCH_PKG_DIR/usr/bin/$APP_NAME"
#!/bin/sh
exec /opt/$APP_NAME/$APP_NAME "\$@"
EOF
        chmod +x "$ARCH_PKG_DIR/usr/bin/$APP_NAME"

        cat << EOF > "$ARCH_PKG_DIR/usr/share/applications/$PACKAGE_ID.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$PACKAGE_ID
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
EOF

        if [ -f "$ICON_SRC" ]; then
            cp "$ICON_SRC" "$ARCH_PKG_DIR/usr/share/icons/hicolor/512x512/apps/$PACKAGE_ID.png"
        fi

        cat << EOF > "$ARCH_PKG_DIR/.PKGINFO"
pkgname = $APP_NAME
pkgver = $VERSION-1
pkgdesc = $DESCRIPTION
url = https://hossam-majrashi.github.io/Works/
builddate = $(date +%s)
packager = Juthoor Studio <Hossam.Majrashi@gmail.com>
size = $(du -sb "$ARCH_PKG_DIR" | cut -f1)
arch = x86_64
license = MIT
depend = gtk3
EOF

        (
            cd "$ARCH_PKG_DIR"
            if command -v bsdtar &> /dev/null; then
                bsdtar -cf - .PKGINFO opt usr | zstd -c -T0 -19 > "$ARCH_OUT"
            else
                tar -cf - .PKGINFO opt usr | zstd -c -T0 -19 > "$ARCH_OUT"
            fi
        )
        echo -e "${GREEN}✓ Created $ARCH_OUT${NC}"
    fi
fi

# ----------------------------------------------------
# D. APPIMAGE (AppImage)
# ----------------------------------------------------
if [ "$BUILD_APPIMAGE" = true ]; then
    echo -e "\n${BLUE}==> Packaging Linux AppImage...${NC}"
    APPDIR="$BUILD_TMP/AppDir"
    rm -rf "$APPDIR"
    mkdir -p "$APPDIR/usr/bin"
    mkdir -p "$APPDIR/usr/lib/$APP_NAME"
    mkdir -p "$APPDIR/usr/share/applications"
    mkdir -p "$APPDIR/usr/share/icons/hicolor/512x512/apps"

    cp -r "$BUNDLE_DIR"/* "$APPDIR/usr/lib/$APP_NAME/"

    cat << 'EOF' > "$APPDIR/AppRun"
#!/bin/sh
HERE="$(dirname "$(readlink -f "${0}")")"
export LD_LIBRARY_PATH="${HERE}/usr/lib/mirsad/lib:${HERE}/usr/lib/mirsad:${LD_LIBRARY_PATH}"
exec "${HERE}/usr/lib/mirsad/mirsad" "$@"
EOF
    chmod +x "$APPDIR/AppRun"

    cat << EOF > "$APPDIR/$PACKAGE_ID.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=mirsad %U
Icon=$APP_NAME
Terminal=false
Type=Application
Categories=Utility;Security;System;
MimeType=application/octet-stream;
EOF
    cp "$APPDIR/$PACKAGE_ID.desktop" "$APPDIR/$APP_NAME.desktop"

    if [ -f "$ICON_SRC" ]; then
        cp "$ICON_SRC" "$APPDIR/$APP_NAME.png"
        cp "$ICON_SRC" "$APPDIR/.DirIcon"
    fi

    APPIMAGE_OUT="$DIST_DIR/${APP_NAME}_${VERSION}_x86_64.AppImage"
    if command -v appimagetool &> /dev/null; then
        ARCH=x86_64 appimagetool "$APPDIR" "$APPIMAGE_OUT" > /dev/null 2>&1 || true
        chmod +x "$APPIMAGE_OUT"
        echo -e "${GREEN}✓ Created $APPIMAGE_OUT${NC}"
    else
        echo -e "${YELLOW}Notice: appimagetool not found. Creating self-contained AppImage bundle...${NC}"
        # Portable executable archive format for AppImage
        tar -czf "$APPIMAGE_OUT" -C "$APPDIR" .
        chmod +x "$APPIMAGE_OUT"
        echo -e "${GREEN}✓ Created $APPIMAGE_OUT${NC}"
    fi
fi

# ----------------------------------------------------
# E. GENERIC TARBALL (.tar.gz)
# ----------------------------------------------------
if [ "$BUILD_TAR" = true ]; then
    echo -e "\n${BLUE}==> Packaging Generic Portable Archive (.tar.gz)...${NC}"
    TAR_STAGE="$BUILD_TMP/${APP_NAME}_${VERSION}_linux_x86_64"
    rm -rf "$TAR_STAGE"
    mkdir -p "$TAR_STAGE"

    cp -r "$BUNDLE_DIR"/* "$TAR_STAGE/"

    cat << 'EOF' > "$TAR_STAGE/run.sh"
#!/bin/sh
HERE="$(dirname "$(readlink -f "$0")")"
exec "$HERE/mirsad" "$@"
EOF
    chmod +x "$TAR_STAGE/run.sh"

    cat << EOF > "$TAR_STAGE/$APP_NAME.desktop"
[Desktop Entry]
Name=$APP_TITLE
Name[ar]=مرصاد
Comment=$DESCRIPTION
Exec=$APP_NAME %U
Icon=$APP_NAME
Terminal=false
Type=Application
Categories=Utility;Security;System;
EOF

    if [ -f "$ICON_SRC" ]; then
        cp "$ICON_SRC" "$TAR_STAGE/$APP_NAME.png"
    fi

    cat << 'EOF' > "$TAR_STAGE/install.sh"
#!/bin/sh
set -e
HERE="$(dirname "$(readlink -f "$0")")"
OPT_DIR="/opt/mirsad"
BIN_DIR="/usr/local/bin"
DESKTOP_DIR="/usr/share/applications"
ICON_DIR="/usr/share/icons/hicolor/512x512/apps"

echo "Installing Mirsad to $OPT_DIR..."
sudo mkdir -p "$OPT_DIR" "$BIN_DIR" "$DESKTOP_DIR" "$ICON_DIR"
sudo cp -r "$HERE"/* "$OPT_DIR/"
sudo ln -sf "$OPT_DIR/run.sh" "$BIN_DIR/mirsad"
if [ -f "$OPT_DIR/mirsad.desktop" ]; then
    sudo cp "$OPT_DIR/mirsad.desktop" "$DESKTOP_DIR/"
fi
if [ -f "$OPT_DIR/mirsad.png" ]; then
    sudo cp "$OPT_DIR/mirsad.png" "$ICON_DIR/"
fi
echo "✓ Successfully installed Mirsad!"
EOF
    chmod +x "$TAR_STAGE/install.sh"

    TAR_OUT="$DIST_DIR/${APP_NAME}_${VERSION}_linux_x86_64.tar.gz"
    (
        cd "$BUILD_TMP"
        tar -czf "$TAR_OUT" "${APP_NAME}_${VERSION}_linux_x86_64"
    )
    echo -e "${GREEN}✓ Created $TAR_OUT${NC}"
fi

rm -rf "$BUILD_TMP"

echo -e "\n${GREEN}====================================================${NC}"
echo -e "${GREEN}    Packaging Complete! Artifacts in dist/:        ${NC}"
echo -e "${GREEN}====================================================${NC}"
ls -lh "$DIST_DIR"
echo ""
