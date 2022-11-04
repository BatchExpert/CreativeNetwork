@echo off
cls
set Project=%~2
set PWD=%~3
set KEY=%~4
del %temp%\Portable2.bat >nul & timeout /t 1 /nobreak >nul & cls & powershell -nologo -noprofile -command "Invoke-WebRequest 'https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/Portable.bat' -OutFile '%temp%\Portable2.bat'" >nul & call %temp%\Portable2.bat "%~1" "%Project%" "%PWD%" "%KEY%" & del %temp%\Portable2.bat >nul & cls
