@echo off
if not exist C:\"Program Files"\WindowsApps\Microsoft.MinecraftUWP_1.19.5101.0_x64__8wekyb3d8bbwe\Minecraft.Windows.exe (
title System Error - No Minecraft Was Found
echo.
echo !Error! Please Install Minecraft Bedrock edition
echo.
timeout /t 2 /nobreak >nul
taskkill /f /im cmd.exe
exit /b
)
title HCBM - Minecraft Commands
cls
timeout /t 1 /nobreak >nul
:Cmd2
if not exist HC/H.exe set "Status=Download Required"
if exist HC/H.exe set "Status=Execute"
cls
echo Bypass Command Cbe - Made By Lunar Studios
echo.
echo ^| 1 ^| Normal Command
echo ^| 2 ^| Multiple Commands
echo ^| 3 ^| View Modules (Pre-Made) -Disenabled
echo ^| 4 ^| Horion [%Status%]
echo.
choice /c 1234 >nul
if %errorlevel% equ 1 goto Cmd
if %errorlevel% equ 2 goto Add
if %errorlevel% equ 3 goto Cmd2
if %errorlevel% equ 4 goto Horion
:Cmd
cls
echo Type In A Minecraft Command You Want To Execute
echo If Your Going to use "" Please Do /"/" Then
set /p "MCmd=/"
echo [%date%-%username%]  Command: ^%MCmd% >>HC/Logs.txt
(
echo {Count:1b,Name:"minecraft:moving_block",tag:{display:{Name:"Â§rÂ§bCustom Command Module\nÂ§e%MCmd%\nÂ§aTypeÂ§f :Â§c Agent"},minecraft:keep_on_death:1b,movingBlock:{name:"minecraft:beehive"},movingEntity:{Occupants:[{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/gamerule commandblockoutput false",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}},{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/gamerule sendcommandfeedback false",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}},{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/tickingarea add circle ~ ~ ~ 4 %random%%random%%random%",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}},{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/%MCmd%",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}}
echo ],id:"Beehive"},pistonPosX:0,pistonPosY:0,pistonPosZ:0}})>HC/Print.txt
start HC/Print.txt
call :TTS "Copy And Paste The Code Then Type .n b t load  inside of Minecraft"
echo Press Any Key To Close The Module Notepad And Return Back To Menu
pause >nul
goto E
:E
taskkill /f /im notepad.exe
del HC/Print.txt
goto Cmd2
:Add
set /a CmdTyped=0
(
echo {Count:1b,Name:"minecraft:moving_block",tag:{display:{Name:"Â§rÂ§bCustom Command Module\nÂ§eMultiline\nÂ§aTypeÂ§f :Â§c Agent"},minecraft:keep_on_death:1b,movingBlock:{name:"minecraft:beehive"},movingEntity:{Occupants:[{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/gamerule commandblockoutput false",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}},{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/gamerule sendcommandfeedback false",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}},{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"/tickingarea add circle ~ ~ ~ 4 %random%%random%%random%",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}})>HC/Print.txt
:Exe
cls
echo.
echo Total Commands [%CmdTyped%]--Type A Command For It To Be Added
echo If Your Going to use "" Please Do /"/" Then
echo.
set /p "Mcmd2=/"
set /a CmdTyped=%CmdTyped% +1
(
echo ,{ActorIdentifier:"minecraft:command_block_minecart<>",SaveData:
echo {Command:"%MCmd2%",Pos:[],Persistent:1b ,TickDelay:1,Ticking:1b,TicksLeftToStay:1,Invulnerable:1b, definitions:["+minecraft:agent"],identifier:"minecraft:command_block_minecart"}})>>HC/Print.txt
echo Added %MCmd2%
echo [%date%-%username%]  Command: ^%MCmd2% >>HC/Logs.txt
goto Exe2
:Exe2
cls
echo ^| 1 ^| Add Command
echo ^| 2 ^| Print Command
choice /c 12 >nul
if %errorlevel% equ 1 goto Exe
if %errorlevel% equ 2 goto End2
:End2
echo ],id:"Beehive"},pistonPosX:0,pistonPosY:0,pistonPosZ:0}} >>HC/Print.txt
start HC/Print.txt
echo Press Any Key To Close The Module Notepad And Return Back To Menu
call :TTS "Copy And Paste The Code Then Type .n b t load  inside of Minecraft"
pause >nul
taskkill /f /im notepad.exe
del HC/Print.txt
goto Cmd2

:TTS "Message"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >>TTS.vbs
echo speech.speak "%~1" >>TTS.vbs
start TTS.vbs
timeout /t 2 /nobreak >nul
del TTS.vbs
goto :Eof
:Horion
cls
if not exist H.exe goto Installer
start HC/H.exe
goto Cmd2
:Installer
powershell -nologo -noprofile -command "Invoke-WebRequest 'https://github.com/BatchExpert/CreativeNetwork/blob/main/HorionInjector.exe?raw=true' -OutFile 'HC/H.exe'"
goto Cmd2
