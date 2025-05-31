@echo off
cls

set MSI_URL=https://download.oracle.com/java/24/latest/jdk-24_windows-x64_bin.msi

set MSI_File=%TEMP%\installer.msi

echo Downloading the MSI file...
powershell -Command "Invoke-WebRequest -Uri %MSI_URL% -OutFile %MSI_File%"

if exist "%MSI_File%" (
    echo MSI file downloaded successfully.
    
    echo Installing MSI...
    msiexec /i "%MSI_File%" /norestart
    
    echo Installation complete.
) else (
    echo Error: MSI file download failed.
)

pause
exit
