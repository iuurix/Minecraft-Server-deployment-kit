@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://fill-data.papermc.io/v1/objects/303f9c60d5d75c52585c9e95efbc46d43ae8683efe7dee8763a16d6506681ee1/velocity-3.4.0-SNAPSHOT-528.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\Server.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\Server.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
