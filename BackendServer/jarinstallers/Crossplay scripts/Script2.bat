@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://download.geysermc.org/v2/projects/floodgate/versions/latest/builds/latest/downloads/spigot

set DestinationFolder=%ScriptDir%..\..\..\DeployedServer\plugins

set JAR_File=%TEMP%\Floodgate-Spigot.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\Floodgate-Spigot.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

set JAR_WEB=https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/spigot

set JAR_FILE=%TEMP%\Geyser-Spigot.jar

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_WEB% -OutFile %JAR_FILE%"

if exist "%JAR_FILE%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_FILE%" "%DestinationFolder%\Geyser-Spigot.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
