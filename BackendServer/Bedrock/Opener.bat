@echo off

set ScriptDir=%~dp0

set "zip_file=%ScriptDir%bedrock-server-1.21.zip"
set "destination_folder=%ScriptDir%..\..\DeployedServer"

echo Extracting files from "%zip_file%" to "%destination_folder%"...

if not exist "%destination_folder%" (
  mkdir "%destination_folder%"
)

powershell -command "Expand-Archive -Path '%zip_file%' -DestinationPath '%destination_folder%' -Force"

if %errorlevel% == 0 (
  echo Extraction successful.
) else (
  echo Extraction failed with error code %errorlevel%.
)

pause
exit