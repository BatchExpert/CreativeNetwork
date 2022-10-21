@echo
set CheckA=%0%
set CheckB="%CD%\BootStrapper.bat"
if not %CheckA%==%CheckB% (
del BootStrapper.bat
del BootStrapper.cmd
rename %0% BootStrapper.bat >nul
)