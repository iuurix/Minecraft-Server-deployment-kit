@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://ci.pufferfish.host/job/Pufferfish-1.21/32/artifact/pufferfish-server/build/libs/pufferfish-paperclip-1.21.8-R0.1-SNAPSHOT-mojmap.jar

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
