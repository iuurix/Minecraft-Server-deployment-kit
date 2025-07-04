@echo off
cls

set JAR_URL=%https://repo.glowstone.net/service/rest/v1/search/assets/download?group=net.glowstone&name=glowstone&sort=version&repository=snapshots&maven.baseVersion=2022.6.1-SNAPSHOT&direction=desc&maven.classifier=%

set DestinationFolder=%ScriptDir%..\..\DeployedServer

set JAR_File=%TEMP%\glowstone-2022.6.1-20220704.134955-17.jar

if not exist "%DestinationFolder%" (
    mkdir "%DestinationFolder%"
)

echo Downloading the .jar file...
powershell -Command "Invoke-WebRequest -Uri %JAR_URL% -OutFile %JAR_File%"

if exist "%JAR_File%" (
    echo .jar file downloaded successfully.
    
    move "%JAR_File%" "%DestinationFolder%\glowstone-2022.6.1-20220704.134955-17.jar"
    echo .jar file moved to: %DestinationFolder%
) else (
    echo Error: .jar file download failed.
)

pause
exit
