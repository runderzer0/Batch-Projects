@echo off
set FILE_PATH="C:\path\to\your\file.rar"
set CHARSET=abcdefghijklmnopqrstuvwxyz0123456789
set MAX_LENGTH=8
for /L %%i in (1,1,%MAX_LENGTH%) do (
    call :generatePassword %%i
    unrar x -p%PASSWORD% %FILE_PATH% > nul 2>&1
    if not errorlevel 1 (
        echo Password found: %PASSWORD%
        goto :done
    )
)
echo Password not found.
goto :eof
:generatePassword
set PASSWORD=
setlocal enabledelayedexpansion
for /l %%a in (1,1,%1) do (
    set /a idx=!random! %% 36
    for %%b in (!idx!) do set PASSWORD=!PASSWORD!!CHARSET:~%%b,1!
)
endlocal & set PASSWORD=%PASSWORD%
goto :eof
:done
pause
