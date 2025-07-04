@echo off
cls

set ScriptDir=%~dp0

set JAR_URL=https://fill-data.papermc.io/v1/objects/1d9dc624bef59a62f320bc22a134e44a7b9326538463e94726465297e6324751/velocity-3.4.0-SNAPSHOT-521.jar

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\velocity-3.4.0-SNAPSHOT-521.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\velocity-3.4.0-SNAPSHOT-521.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
