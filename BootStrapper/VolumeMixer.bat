@if (@a==@b) @end /*

:: Batch portion

@echo off

cscript /e:jscript "%~f0"

:: JScript portion */

var shl = new ActiveXObject("WScript.Shell");
for (var i = 0; i < 50; i++) {
    shl.SendKeys(String.fromCharCode(0xAF));
}
