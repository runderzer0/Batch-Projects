@echo off
set "websites=www.chatgpt.com www.anakinai.com www.openai.com www.youtube.com www.google.com www.osint.pics www.cordkiller.com"
set "hosts_file=%SystemRoot%\System32\drivers\etc\hosts"
for %%i in (%websites%) do (
    echo 127.0.0.1 %%i >> "%hosts_file%"
    echo ::1 %%i >> "%hosts_file%"
)
echo Websites blocked successfully.
pause
exit
