@echo off
set "WebhookURL=YOUR_WEBHOOK_URL_HERE"
set "Content=Hello, Discord from batch script!"
curl -H "Content-Type: application/json" -d "{\"content\":\"%Content%\"}" %WebhookURL%
pause
exit
