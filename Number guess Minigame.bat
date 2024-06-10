@echo off
setlocal EnableDelayedExpansion
set /a "target=%RANDOM% %% 100 + 1"
set /a "guesses=0"
set "guess="
:guess_loop
cls
echo Guess the number between 1 and 100:
set /p "guess=Enter your guess (or 'q' to quit): "
if "%guess%"=="q" goto :end_game
set /a "guesses+=1"
if "%guess%"=="%target%" (
    echo Congratulations! You guessed the number %target% in %guesses% guesses!
    pause
    goto :end_game
) else if "%guess%" lss "%target%" (
    echo Too low!
) else (
    echo Too high!
)
pause
goto :guess_loop
:end_game
exit
