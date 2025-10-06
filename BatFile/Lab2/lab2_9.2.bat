@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Usage: lab2_9_dir.bat folder_path year
    exit /b
)
if "%~2"=="" (
    echo Please specify the year too.
    exit /b
)

set "folder=%~1"
set "year=%~2"

echo Files from January to June %year%:
echo --------------------------------

for /f "tokens=1,4" %%a in ('dir /A:-D /T:C "%folder%"') do (
    set "date=%%a"
    set "name=%%b"

    if defined name (

        set "month=!date:~3,2!"
        set "fileYear=!date:~6,4!"

        if "!fileYear!"=="%year%" if !month! lss 7 echo !name!
    )
)