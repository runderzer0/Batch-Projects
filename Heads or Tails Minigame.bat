@echo off
set /a heads=0
set /a tails=0
:flip_coin
set /a "result=%RANDOM% %% 2"
if %result%==0 (
    echo Heads
    set /a "heads+=1"
) else (
    echo Tails
    set /a "tails+=1"
)
goto :eof
set /p "flips=Enter the number of times to flip the coin: "
for /l %%i in (1, 1, %flips%) do (
    call :flip_coin
)
echo.
echo Total flips: %flips%
echo Heads: %heads%
echo Tails: %tails%
pause
exit
