@echo off
rem Starts a headless dedicated server. Players join with this machine's IP address.
rem Usage: start-server.bat [port]     (default port 7777, UDP)
set PORT=%1
if "%PORT%"=="" set PORT=7777
echo Server starting on UDP port %PORT%. Log: %~dp0server.log
echo Close this window or press Ctrl+C to stop it.
"%~dp0BlessedThrone.exe" -batchmode -nographics -server -port %PORT% -logFile "%~dp0server.log"
