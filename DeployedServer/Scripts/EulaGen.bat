@echo off
set ScriptDir=%~dp0
set "filename=eula.txt"

echo #By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA). > "%filename%"
echo #Sun Feb 16 08:12:50 CET 2025 >> "%filename%"
echo eula=true>> "%filename%"

echo File "%filename%" created successfully.
set DestinationFolder=%ScriptDir%..\DeployedServer
pause
exit