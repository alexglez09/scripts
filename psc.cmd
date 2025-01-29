@echo off

REM Run powershell scripts in current directory. Example: psc dev-installs

setlocal

REM Ensure a script name is provided
if "%~1"=="" (
    echo Usage: psc.cmd ScriptName
    exit /b 1
)

REM Get the directory of the current script
set "scriptDir=%~dp0"

REM Construct full path to the PowerShell script
set "scriptFile=%scriptDir%%~1.ps1"

REM Check if the script file exists
if not exist "%scriptFile%" (
    echo Error: Script "%~1.ps1" not found in %scriptDir%
    exit /b 1
)

REM Run the specified PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -File "%scriptFile%"

endlocal
