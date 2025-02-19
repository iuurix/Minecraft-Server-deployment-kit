@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://github.com/IzzelAliz/Arclight/releases/download/FeudalKings%2F1.0.0-SNAPSHOT/arclight-neoforge-1.21-1.0.0-SNAPSHOT.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\arclight-neoforge-1.21-1.0.0-SNAPSHOT.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\arclight-neoforge-1.21-1.0.0-SNAPSHOT.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
