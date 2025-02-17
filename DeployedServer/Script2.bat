@echo off
cls

:: Get the current directory where the script is located
set ScriptDir=%~dp0

:: Change the working directory to where the script is
cd /d "%ScriptDir%"

:: Iterate over each .jar file in the current directory and run it
for %%f in (*.jar) do (
    echo Running %%f...
    java -jar "%%f"
)

echo Server has been closed!
exit
