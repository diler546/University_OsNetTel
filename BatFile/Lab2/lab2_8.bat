@echo off
setlocal enabledelayedexpansion
set /a n=%1

if "%1"=="" (
  echo Usage: factorial.bat number
  exit /b 
)

if %n% lss 0 (
  echo Negative number not allowed
  exit /b 
)

if %n% gtr 12 (
  echo Number too big ^(max 12^)
  exit /b 
)

set /a fact=1
for /l %%i in (1,1,%n%) do set /a fact*=%%i
echo Factorial of %n% = %fact%
