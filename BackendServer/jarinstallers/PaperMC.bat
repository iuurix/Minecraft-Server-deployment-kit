@echo off
cls

set ScriptDir=%~dp0

:: Define the URL of the .jar file
set JAR_URL=https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/164/downloads/paper-1.21.4-164.jar

:: Define the destination folder where the .jar will be saved
set DestinationFolder=%ScriptDir%..\..\DeployedServer

:: Define the local path where the .jar will be downloaded
set JAR_File=%TEMP%\paper-1.21.4-164.jar

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
    move "%JAR_File%" "%DestinationFolder%\paper-1.21.4-164.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
