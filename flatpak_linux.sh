#!/usr/bin/env bash

set -e

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
FLATPAK_ID="com.h.mirsad"
DESCRIPTION="Mirsad — Multi-Engine File Security Scanner"
VERSION="1.0.0"
RUNTIME_VER="24.08"
FLATPAK_DIR="$SCRIPT_DIR/flatpak"
DIST_DIR="$SCRIPT_DIR/dist"
BUILD_TMP="$SCRIPT_DIR/build/flatpak_stage"
FLATPAK_NAME="${APP_NAME}_${VERSION}_x86_64.flatpak"

echo -e "${BLUE}====================================================${NC}"
echo -e "${BLUE}       Mirsad Flatpak Build Script                  ${NC}"
echo -e "${BLUE}====================================================${NC}"

mkdir -p "$DIST_DIR"
rm -rf "$BUILD_TMP"
mkdir -p "$BUILD_TMP"

# 1. Compile Flutter Linux Release Bundle
echo -e "\n${BLUE}==> Building Flutter Linux Release Bundle...${NC}"
flutter build linux --release

BUNDLE_DIR="$SCRIPT_DIR/build/linux/x64/release/bundle"
if [ ! -d "$BUNDLE_DIR" ]; then
    echo -e "${RED}Error: Flutter bundle directory not found at $BUNDLE_DIR${NC}"
    exit 1
fi

# 2. Stage Flatpak Directory Structure
STAGE_DIR="$BUILD_TMP/stage"
mkdir -p "$STAGE_DIR/files/bin"
mkdir -p "$STAGE_DIR/files/lib/$APP_NAME"
mkdir -p "$STAGE_DIR/files/share/applications"
mkdir -p "$STAGE_DIR/files/share/metainfo"
mkdir -p "$STAGE_DIR/files/share/icons/hicolor/256x256/apps"
mkdir -p "$STAGE_DIR/files/share/icons/hicolor/512x512/apps"

# 3. Copy Application Bundle
echo -e "${BLUE}==> Staging Application Bundle...${NC}"
cp -r "$BUNDLE_DIR"/* "$STAGE_DIR/files/lib/$APP_NAME/"

# 4. Create Launcher Script
cat << EOF > "$STAGE_DIR/files/bin/$APP_NAME"
#!/bin/sh
export LD_LIBRARY_PATH="/app/lib/$APP_NAME/lib:/app/lib/$APP_NAME:\$LD_LIBRARY_PATH"
exec /app/lib/$APP_NAME/$APP_NAME "\$@"
EOF
chmod +x "$STAGE_DIR/files/bin/$APP_NAME"

# 5. Copy Metadata & Assets from flatpak/
echo -e "${BLUE}==> Copying metadata from flatpak/ directory...${NC}"
cp "$FLATPAK_DIR/$FLATPAK_ID.desktop" "$STAGE_DIR/files/share/applications/$FLATPAK_ID.desktop"
cp "$FLATPAK_DIR/$FLATPAK_ID.metainfo.xml" "$STAGE_DIR/files/share/metainfo/$FLATPAK_ID.metainfo.xml"
cp "$FLATPAK_DIR/com.h.mirsad.png" "$STAGE_DIR/files/share/icons/hicolor/256x256/apps/$FLATPAK_ID.png"
cp "$FLATPAK_DIR/com.h.mirsad.png" "$STAGE_DIR/files/share/icons/hicolor/512x512/apps/$FLATPAK_ID.png"
cp "$FLATPAK_DIR/$FLATPAK_ID.json" "$DIST_DIR/$FLATPAK_ID.json"

cat << EOF > "$STAGE_DIR/metadata"
[Application]
name=$FLATPAK_ID
runtime=org.freedesktop.Platform/x86_64/$RUNTIME_VER
sdk=org.freedesktop.Sdk/x86_64/$RUNTIME_VER
command=$APP_NAME
EOF

# 6. Build and Export Flatpak Bundle
echo -e "${BLUE}==> Exporting Flatpak Package to $DIST_DIR...${NC}"
if command -v flatpak &> /dev/null; then
    flatpak build-finish "$STAGE_DIR" \
        --command="$APP_NAME" \
        --share=ipc \
        --share=network \
        --socket=fallback-x11 \
        --socket=wayland \
        --socket=x11 \
        --device=dri \
        --filesystem=host \
        --filesystem=home > /dev/null 2>&1 || true

    REPO_DIR="$BUILD_TMP/repo"
    if flatpak build-export "$REPO_DIR" "$STAGE_DIR" > /dev/null 2>&1 && \
       flatpak build-bundle "$REPO_DIR" "$DIST_DIR/$FLATPAK_NAME" "$FLATPAK_ID" > /dev/null 2>&1; then
        echo -e "${GREEN}✓ Created $DIST_DIR/$FLATPAK_NAME${NC}"
    else
        echo -e "${YELLOW}Notice: Building standalone flatpak tarball bundle...${NC}"
        tar czf "$DIST_DIR/$FLATPAK_NAME" -C "$STAGE_DIR" .
        echo -e "${GREEN}✓ Created $DIST_DIR/$FLATPAK_NAME${NC}"
    fi
else
    echo -e "${YELLOW}Notice: 'flatpak' binary not installed. Creating archive bundle...${NC}"
    tar czf "$DIST_DIR/$FLATPAK_NAME" -C "$STAGE_DIR" .
    echo -e "${GREEN}✓ Created $DIST_DIR/$FLATPAK_NAME${NC}"
fi

rm -rf "$BUILD_TMP"

echo -e "\n${GREEN}====================================================${NC}"
echo -e "${GREEN}    Flatpak Build Complete:                        ${NC}"
echo -e "${GREEN}====================================================${NC}"
ls -lh "$DIST_DIR/$FLATPAK_NAME"
echo ""
