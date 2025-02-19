@echo off
cls

set ScriptDir=%~dp0

cd /d "%ScriptDir%"

for %%f in (*.jar) do (
    echo Running %%f...
    java -jar "%%f"
)

echo Server has been closed!
pause
exit
