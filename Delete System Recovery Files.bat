@echo off
echo Deleting Windows Recovery/Backup Files...
del /Q /F %SystemRoot%\System32\WinRE.wim
del /Q /F %SystemRoot%\System32\Recovery\*.win
rmdir /Q /S %SystemRoot%\System32\Recovery\Original
rmdir /Q /S %SystemRoot%\System32\Recovery\Backup
echo Clearing Temporary Files...
del /Q /F %SystemRoot%\Temp\*.*
del /Q /F %TEMP%\*.*
del /Q /F %USERPROFILE%\AppData\Local\Temp\*.*
echo Cleanup complete.
pause
exit
