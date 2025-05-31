@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://api.purpurmc.org/v2/purpur/1.21.5/2441/download

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\purpur-1.21.5-2441.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\purpur-1.21.4-2394.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
