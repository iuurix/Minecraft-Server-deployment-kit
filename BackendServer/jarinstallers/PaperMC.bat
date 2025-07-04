@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://fill-data.papermc.io/v1/objects/5554d04f7b72cf9776843d7d600dfa72062ad4e9991dbcf6d7d47bdd58cead9f/paper-1.21.7-16.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\paper-1.21.7-16.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\paper-1.21.7-16.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
