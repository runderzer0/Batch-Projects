@echo off
setlocal
openfiles >nul 2>&1 || (
    powershell Start-Process '%0' -Verb runAs
    exit /b
)
set "source=%HOMEPATH%\Downloads\yourfile.exe"
set "destination=%WINDIR%\System32\yourfile.exe"
if not exist "%source%" (
    exit /b
)
move /y "%source%" "%destination%"
if not exist "%destination%" (
    exit /b
)
endlocal
pause