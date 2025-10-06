@echo off
if "%~1"=="" (
    echo Usage: count_numbers.bat filename.txt
    exit /b
)

set "file=%~1"
set /a count=0

for /f %%i in ('findstr "^[-]*[0-9][1-9]*$" "%~1"') do (
        set /a count+=1
)

echo Number of integers in file: %count%
