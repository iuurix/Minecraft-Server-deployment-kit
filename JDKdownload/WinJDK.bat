@echo off
cls

set ScriptDir=%~dp0

:start
cls
echo ///////////////////
echo / (1) EXE install /
echo / (2) MSI install /
echo / (X) Exit        /
echo ///////////////////
echo 
echo INFO: If the msi installer errors out try to run the same choise again

set /p choice=Enter your choice (1-2 or X for Exit):

:: Perform actions based on user choice
if /i "%choice%"=="1" (
    echo Installing JDK for Windows...
    start "" "%ScriptDir%DONTTOUCHME.bat"
)

if /i "%choice%"=="2" (
    echo Installing JDK for Windows...
    start "" "%ScriptDir%whatinstaller.bat"
)

if /i "%choice%"=="X" (
    echo Exiting the script.
    exit
)

echo If nothing runs then your choise is invalid
pause
goto start
