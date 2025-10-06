@echo off
setlocal enabledelayedexpansion

set /p num=Enter number (end with -): 
set /a min=%num%
set /a max=%num%

:loop
set /p num=Enter number (end with -): 
if "%num%"=="-" goto end
if %num% lss %min% set /a min=%num%
if %num% gtr %max% set /a max=%num%
goto loop

:end
echo Min = %min%
echo Max = %max%
