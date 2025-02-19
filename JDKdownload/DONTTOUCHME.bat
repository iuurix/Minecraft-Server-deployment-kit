@echo off
cls

set EXE_URL=https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.exe

set EXE_File=%TEMP%\installer.exe

echo Downloading the EXE file...
powershell -Command "Invoke-WebRequest -Uri %EXE_URL% -OutFile %EXE_File%"

if exist "%EXE_File%" (
    echo EXE file downloaded successfully.
    
    echo Running EXE...
    start "" "%EXE_File%"
    
    echo Execution started.
) else (
    echo Error: EXE file download failed.
)

pause
exit
