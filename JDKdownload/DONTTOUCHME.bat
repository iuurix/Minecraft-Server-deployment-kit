@echo off
cls

:: Define the URL of the EXE file
set EXE_URL=https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.exe

:: Define the local path where the EXE will be downloaded
set EXE_File=%TEMP%\installer.exe

:: Download the EXE file using PowerShell
echo Downloading the EXE file...
powershell -Command "Invoke-WebRequest -Uri %EXE_URL% -OutFile %EXE_File%"

:: Check if the EXE file was downloaded
if exist "%EXE_File%" (
    echo EXE file downloaded successfully.
    
    :: Run the EXE file
    echo Running EXE...
    start "" "%EXE_File%"
    
    echo Execution started.
) else (
    echo Error: EXE file download failed.
)

pause
exit
