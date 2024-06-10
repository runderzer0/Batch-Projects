@echo off
setlocal EnableDelayedExpansion
:input
set /p "num1=Enter the first number: "
set /p "op=Enter the operation (+, -, *, /): "
set /p "num2=Enter the second number: "
if "%op%"=="+" (
    set /a result=num1 + num2
) else if "%op%"=="-" (
    set /a result=num1 - num2
) else if "%op%"=="*" (
    set /a result=num1 * num2
) else if "%op%"=="/" (
    set /a result=num1 / num2
) else (
    echo Invalid operation!
    goto input
)
echo Result: !result!
:end
pause
exit
