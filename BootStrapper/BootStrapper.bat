@echo Off
set Project=Test
set Version=1.0
set CurrentVersion=VerA
set LinkA="https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/UpdateNotice.txt"
set LinkB="https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/BootStrapper.bat"
if exist C:\BootStrapper\Update\IdentifierCode.bat call C:\BootStrapper\Update\IdentifierCode.bat
goto VarCheck
:%PasteBinLocation%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Do not edit Down here  Paste Your Code Bellow This Message::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Made By Creative Network                                  ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Dont Steal My Ideas And Stuff People, I make it for fun   ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

goto %PasteBinLocation%
:VarCheck
set relversion=%CurrentVersion%/master
set CheckA=%0%
set CheckB="%CD%\%Project% BootStrapper.bat"
if not %CheckA%==%CheckB% (
if exist "%Project% BootStrapper.bat" del "%Project% BootStrapper.bat"
if exist "%Project% BootStrapper.cmd" del "%Project% BootStrapper.cmd"
rename %0% BootStrapper.bat >nul
)
::BootStrapper::
:BootStrapper
:startup2
title %Project% BootStrapper
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
set "DEL=%%a"
)
goto BootStrap2

:BootStrap2
echo [%Project%] Checking for updates...
if exist "C:\BootStrapper\Update\idk.txt" (
    del "C:\BootStrapper\Update\idk.txt"
)
if not exist "C:\BootStrapper\Update\" (
    mkdir "C:\BootStrapper\Update"
)
if not exist "C:\BootStrapper\Update\IdentifierCode.bat" (
    echo set PasteBinLocation=%Random%%Random%>"C:\BootStrapper\Update\IdentifierCode.bat"
)
if exist C:\BootStrapper\Update\IdentifierCode.bat call C:\BootStrapper\Update\IdentifierCode.bat
powershell -nologo -noprofile -command "Invoke-WebRequest %LinkA% -OutFile 'C:\BootStrapper\Update\idk.txt'" >nul
set /p updatescommit=<"C:\BootStrapper\Update\idk.txt"

if not %updatescommit% == %CurrentVersion% (
    goto BootStrap3
) else (    
echo [%Project%] No updates found, Starting Up %Project%
timeout /t 3 /nobreak >nul
goto checks
)

:BootStrap3
echo [%Project%] Update Detected Updating...
timeout /t 3 /nobreak >nul
echo [%Project%] Downloading Update...
powershell -nologo -noprofile -command "Invoke-WebRequest %LinkB% -OutFile '%CD%\BootStrapper.bat'" >nul
echo [%Project%] Update Downloaded, restarting...
if exist "C:\BootStrapper\Update\idk.txt" (
    break>"C:\BootStrapper\Update\idk.txt"
    echo 1 >> "C:\BootStrapper\Update\idk.txt"
)
del "C:\BootStrapper\Update\idk.txt"
rmdir "C:\BootStrapper\Update\"
timeout /t 3 /nobreak >nul

:checks
goto %PasteBinLocation%
