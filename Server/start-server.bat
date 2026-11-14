@echo off
rem Starts a headless dedicated server. Players join with this machine's IP address.
rem Usage: start-server.bat [port]     (default port 7777, UDP)
set PORT=%1
if "%PORT%"=="" set PORT=7777

rem Stop a server left over from an earlier run, so the port is free.
call "%~dp0stop-server.bat" >nul

start "" "%~dp0BlessedThrone.exe" -batchmode -nographics -server -port %PORT% -logFile "%~dp0server.log"
echo Server running on UDP port %PORT%. Log: %~dp0server.log
echo.
echo Press any key in this window to STOP the server.
echo If you close this window instead, the server keeps running; run stop-server.bat to stop it.
pause >nul
call "%~dp0stop-server.bat"
