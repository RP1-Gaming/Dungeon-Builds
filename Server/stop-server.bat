@echo off
rem Stops any dedicated server running on this machine. Game clients are left alone.
powershell -NoProfile -Command "$s = Get-CimInstance Win32_Process -Filter \"Name='BlessedThrone.exe'\" | Where-Object { $_.CommandLine -like '*-server*' }; if ($s) { $s | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }; Write-Host 'Server stopped.' } else { Write-Host 'No server is running.' }"
