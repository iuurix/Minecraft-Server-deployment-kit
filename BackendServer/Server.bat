@echo off
cls

set ScriptDir=%~dp0

:start
cls
echo Copy a server jar file api down here
echo Plugins
echo (1) PaperMC
echo (2) Pufferfish
echo (3) Purpur
echo (C) Crossplay (Purpur)
echo Mods
echo (4) Fabric
echo Mods and Plugins
echo (5) Fabric (Arclight)
echo (6) Forge (Arclight)
echo (7) Neoforge (Arclight)
echo Normal
echo (8) Normal (Java)
echo (B) Normal (Bedrock)

set /p choice=Enter your choice (1-8, B, or C):

if /i "%choice%"=="1" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\PaperMC.bat"
)

if /i "%choice%"=="2" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\Pufferfish.bat"
)

if /i "%choice%"=="3" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\Purpur.bat"
)

if /i "%choice%"=="4" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\Fabric.bat"
)

if /i "%choice%"=="5" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\FabricArclight.bat"
)

if /i "%choice%"=="6" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\ForgeArclight.bat"
)

if /i "%choice%"=="7" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\NeoforgeArclight.bat"
)

if /i "%choice%"=="8" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\NoPlugins.bat"
)

if /i "%choice%"=="B" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\Bedrock\BedrockServer.bat"
)

if /i "%choice%"=="C" (
    echo Opening script...
    start "" "%ScriptDir%..\BackendServer\jarinstallers\Crossplay.bat"
)

echo Running script (if nothing is running then you entered an invalid choise).

pause
exit 
