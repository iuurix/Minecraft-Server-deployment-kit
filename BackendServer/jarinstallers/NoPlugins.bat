@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\server.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\server.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
