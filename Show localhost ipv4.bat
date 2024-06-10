@echo off
ipconfig | findstr IPv4 > temp.txt
for /f "tokens=2 delims=:" %%i in (temp.txt) do (
    set "IPv4Address=%%i"
)
set "IPv4Address=%IPv4Address: =%"
echo Local PC IPv4 Address: %IPv4Address%
del temp.txt
pause
exit
