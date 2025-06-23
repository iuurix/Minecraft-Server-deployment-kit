@echo off

set "folder_to_check=%ScriptDir%"

echo Checking folder "%folder_to_check%" for executable files...

for %%a in ("%folder_to_check%\*.exe") do (
  if exist "%%a" (
    echo Found executable: "%%a"
    start "" "%%a"
    echo Executable started.
    goto :eof
  )
)

echo No executable files found in "%folder_to_check%".

pause