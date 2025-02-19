@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://api.papermc.io/v2/projects/velocity/versions/3.4.0-SNAPSHOT/builds/473/downloads/velocity-3.4.0-SNAPSHOT-473.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\velocity-3.4.0-SNAPSHOT-473.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\velocity-3.4.0-SNAPSHOT-473.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
