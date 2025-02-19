@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar

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
