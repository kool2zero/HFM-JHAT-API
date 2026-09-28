@echo off
rem Runs month-end-close.txt and exits with 1 if anything failed.
rem JHAT's own exit code is 0 even when commands fail, so this checks the log's summary.
setlocal

set JHAT=E:\Oracle\Middleware\EPMSystem11R1\products\FinancialManagement\Server\jhat.bat
set SCRIPT=%~dp0month-end-close.txt
set LOG=%~dp0Logs\month-end-close.log
set CREDENTIALS=D:\JHAT\Secure\credentials.txt

if not exist "%~dp0Logs" mkdir "%~dp0Logs"

rem -X1: stop at the first failed command. -W120: wait up to 2 hours for the consolidation.
call "%JHAT%" -I"%SCRIPT%" -O"%LOG%" -M"%CREDENTIALS%" -X1 -W120
if errorlevel 1 (
  echo JHAT could not start. Check the options above.
  exit /b 1
)

findstr /B /X /C:"0 execution error(s)" "%LOG%" >nul || (
  echo Commands failed. See %LOG%
  exit /b 1
)
findstr /B /X /C:"0 syntax error(s)" "%LOG%" >nul || (
  echo The script has syntax errors. Run it by hand to see them on the console.
  exit /b 1
)
findstr /B /X /C:"  Invalid functions: 0" "%LOG%" >nul || (
  echo The script uses unknown command names. See %LOG%
  exit /b 1
)

echo Month-end close finished.
