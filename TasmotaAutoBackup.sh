@echo off
setlocal enabledelayedexpansion

REM Get ISO date: YYYY-MM-DD
for /f %%i in ('powershell -NoProfile -Command "(Get-Date).ToString(\"yyyy-MM-dd\")"') do set folder=%%i

REM Create target folder in the script directory
mkdir "%~dp0%folder%" 2>nul

REM Change into the target folder
pushd "%~dp0%folder%"

REM List of IPs – add your distributed devices here
set IPs=192.168.X.236 192.168.X.230 192.168.X.244 192.168.X.224 192.168.X.223 192.168.X.232 192.168.X.231 192.168.X.222 192.168.X.249 192.168.X.247 192.168.X.234 192.168.X.235 192.168.X.221 192.168.X.220 192.168.X.237

REM Loop through all IPs
for %%i in (%IPs%) do (
    echo Backing up device %%i ...
    REM -O = use filename from URL, -J = respect Content-Disposition (original name)
    curl -sSL -OJ "http://%%i/dl"
)

popd
echo.
echo Done! Backups are stored in: %~dp0%folder%
echo.
pause
