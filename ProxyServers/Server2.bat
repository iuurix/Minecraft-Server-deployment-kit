@echo off
cls

:start
cls
echo Copy a server jar down here
echo (1) Waterfall
echo (2) Velocity

set /p choice=Enter your choice (1-2):

:: Perform actions based on user choice
if /i "%choice%"=="1" (
    echo Opening script...
    start "" "%ScriptDir%jarinstallers\Waterfall.bat"
)

if /i "%choice%"=="2" (
    echo Opening script...
    start "" "%ScriptDir%jarinstallers\Velocity.bat"
)

echo Running script (if nothing is running then you entered an invalid choise).

pause
exit 
