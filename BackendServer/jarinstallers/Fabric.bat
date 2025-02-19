@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://meta.fabricmc.net/v2/versions/loader/1.21.4/0.16.10/1.0.1/server/jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\fabric-server-mc.1.21.4-loader.0.16.10-launcher.1.0.1.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\fabric-server-mc.1.21.4-loader.0.16.10-launcher.1.0.1.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
