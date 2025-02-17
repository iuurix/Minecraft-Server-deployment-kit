@echo off
cls

set ScriptDir=%~dp0

:: Define the URL of the .jar file
set JAR_URL=https://meta.fabricmc.net/v2/versions/loader/1.21.4/0.16.10/1.0.1/server/jar

:: Define the destination folder where the .jar will be saved
set DestinationFolder=%ScriptDir%..\..\DeployedServer

:: Define the local path where the .jar will be downloaded
set JAR_File=%TEMP%\fabric-server-mc.1.21.4-loader.0.16.10-launcher.1.0.1.jar

:: Create the destination folder if it doesn't exist
if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

:: Download the .jar file using PowerShell
echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

:: Check if the .jar file was downloaded
if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    :: Move the downloaded .jar file to the destination folder
    move "%JAR_File%" "%DestinationFolder%\fabric-server-mc.1.21.4-loader.0.16.10-launcher.1.0.1.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
