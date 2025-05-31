@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://www.minecraft.net/bedrockdedicatedserver/bin-win/bedrock-server-1.21.83.1.zip

set DestinationFolder=%ScriptDir%

set JAR_File=%TEMP%\bedrock-server-1.21.83.1.zip

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .zip file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .zip file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\bedrock-server-1.21.60.10.zip"
    echo .zip file moved to: %DestinationFolder%
) else (
    echo Error: .zip file download failed.
)

pause
exit
