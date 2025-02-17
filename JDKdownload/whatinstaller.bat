@echo off
cls

:: Define the URL of the MSI file
set MSI_URL=https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.msi

:: Define the local path where the MSI will be downloaded
set MSI_File=%TEMP%\installer.msi

:: Download the MSI file using PowerShell
echo Downloading the MSI file...
powershell -Command "Invoke-WebRequest -Uri %MSI_URL% -OutFile %MSI_File%"

:: Check if the MSI file was downloaded
if exist "%MSI_File%" (
    echo MSI file downloaded successfully.
    
    :: Install the MSI using msiexec
    echo Installing MSI...
    msiexec /i "%MSI_File%" /norestart
    
    echo Installation complete.
) else (
    echo Error: MSI file download failed.
)

pause
exit
