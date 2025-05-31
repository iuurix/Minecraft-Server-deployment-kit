@echo off
cls

set ScriptDir=%~dp0

:start
cls
echo -----------------------
echo IIIII U   U U   U RRRRR
echo   I   U   U U   U R   R
echo   I   U   U U   U RRRRR
echo   I   U   U U   U R  R
echo IIIII  UUU   UUU  R   R
echo ------------------------
echo FOR CROSSPLAY SELECT OPTION 4 or 5

echo.
echo (1) Deploy a backend server
echo (2) Deploy a proxy server
echo (3) Install Java development kit se
echo (4) Run server (jar, Java)
echo (5) Run server (jar, Java, no gui)
echo (6) Run server (exe, Bedrock)
echo (7) Agree to the eula
echo (X) Exit

set /p choice=Enter your choice (1-7 or X for Exit):

:: Perform actions based on user choice
if /i "%choice%"=="1" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\Server.bat"
)

if /i "%choice%"=="2" (
    echo Opening script...
    start "" "%ScriptDir%..\ProxyServers\Server2.bat"
)

if /i "%choice%"=="3" (
    echo Opening script...
    start "" "%ScriptDir%..\JDKdownload\WinJDK.bat"
)

if /i "%choice%"=="4" (
    echo Opening script...
    start "" "%ScriptDir%Script2.bat"
)

if /i "%choice%"=="5" (
    echo Opening script...
    start "" "%ScriptDir%Script4.bat"
)

if /i "%choice%"=="6" (
    echo Opening script...
    start "" "%ScriptDir%Script3.bat"
)


if /i "%choice%"=="7" (
    echo Opening script...
    start "" "%ScriptDir%EulaGen.bat"
)

if /i "%choice%"=="X" exit

echo Opening script... (if nothing is running then you entered an invalid choise).
pause
goto start