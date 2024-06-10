@echo off
setlocal
openfiles >nul 2>&1 || (
    powershell Start-Process '%0' -Verb runAs
    exit /b
)
set "url=https://example.com/yourfile.exe"
set "destination=%HOMEPATH%\Downloads\yourfile.exe"
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%destination%'"
powershell -Command "Start-Process '%destination%' -Verb runAs"
endlocal
pause
