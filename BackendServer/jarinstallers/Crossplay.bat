@echo off

set ScriptDir=%~dp0

echo Making a crossplay server please wait...

start "" "%ScriptDir%\Crossplay scripts\Script1"

start "" "%ScriptDir%\Crossplay scripts\Script2"

start "" "%ScriptDir%\Purpur"

pause
exit
