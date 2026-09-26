@echo off
setlocal enabledelayedexpansion

:: Check if run with administrative rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

set "APP_DIR=%~dp0"
set "EXE_PATH=%APP_DIR%mirsad.exe"

if not exist "%EXE_PATH%" (
    set "EXE_PATH=%LOCALAPPDATA%\Programs\Mirsad\mirsad.exe"
)

echo Registering Mirsad Windows Explorer Context Menu...
reg add "HKCR\*\shell\ScanWithMirsad" /ve /d "Scan with Mirsad" /f
reg add "HKCR\*\shell\ScanWithMirsad" /v "Icon" /d "\"%EXE_PATH%\",0" /f
reg add "HKCR\*\shell\ScanWithMirsad\command" /ve /d "\"%EXE_PATH%\" \"%%1\"" /f

echo Registering Mirsad Send To shortcut...
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut([Environment]::GetFolderPath('SendTo') + '\Mirsad.lnk'); $s.TargetPath='%EXE_PATH%'; $s.Save()"

echo.
echo [OK] Mirsad Windows shortcut integration successfully registered!
echo Right-click any file in Windows Explorer to 'Scan with Mirsad' or use Send To.
pause
