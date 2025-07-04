@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://github.com/IzzelAliz/Arclight/releases/download/FeudalKings%2F1.0.0/arclight-fabric-1.21.1-1.0.0-3457560.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\arclight-fabric-1.21.1-1.0.0-3457560.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\arclight-forge-1.20.1-1.0.6.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
