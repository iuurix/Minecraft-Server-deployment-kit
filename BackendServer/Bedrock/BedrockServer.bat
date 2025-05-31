@echo off
cls

set ScriptDir=%~dp0

:start
cls
echo (1) Install .zip file (this will make you agree to the mc eula)
echo (2) Deploy the .zip file contents into the DeploysedServer folder

set /p choice=Enter your choice (1-2):

:: Perform actions based on user choice
if /i "%choice%"=="1" (
    echo Opening script...
    start "" "%ScriptDir%InstallWeb.bat"
)

if /i "%choice%"=="2" (
    echo Opening script...
    start "" "%ScriptDir%Opener.bat"
)

echo Running script (if nothing is running then you entered an invalid choise).

pause
exit 
