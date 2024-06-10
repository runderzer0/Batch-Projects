@echo off
set "python_url=https://www.python.org/ftp/python/latest/python-x.y.z.exe" 
set "install_dir=C:\Python"
set "temp_file=%TEMP%\python-latest.exe"
echo Downloading the latest Python installer...
curl -o "%temp_file%" "%python_url%"
if %errorlevel% neq 0 (
    echo Failed to download Python installer.
    exit /b 1
)
echo Installing Python...
"%temp_file%" /quiet InstallAllUsers=1 PrependPath=1 TargetDir="%install_dir%"
if %errorlevel% neq 0 (
    echo Failed to install Python.
    exit /b 1
)
echo Python installation successful.
exit /b 0
