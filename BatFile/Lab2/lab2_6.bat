@echo off
set /a count=0
for /d /r "%~1" %%i in (*) do (
  set /a count+=1
)
echo Subfolders count = %count%