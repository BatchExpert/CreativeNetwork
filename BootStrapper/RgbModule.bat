@echo
FOR /F %%A in ('ECHO prompt $E^| cmd') DO SET "ESC=%%A"  
set "RGB=%ESC%[38;2;"