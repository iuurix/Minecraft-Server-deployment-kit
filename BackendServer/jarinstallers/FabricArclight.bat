@echo off
cls

set ScriptDir=%~dp0

:: Define the URL of the .jar file
set JAR_URL=https://github.com/IzzelAliz/Arclight/releases/download/Trials%2F1.0.6/arclight-forge-1.20.1-1.0.6.jar

:: Define the destination folder where the .jar will be saved
set DestinationFolder=%ScriptDir%..\..\DeployedServer

:: Define the local path where the .jar will be downloaded
set JAR_File=%TEMP%\arclight-forge-1.20.1-1.0.6.jar

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
    move "%JAR_File%" "%DestinationFolder%\arclight-forge-1.20.1-1.0.6.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
