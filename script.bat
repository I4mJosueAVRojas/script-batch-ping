@ECHO OFF
DEL info.txt

FOR /F %%A IN ('type lista.txt') do call :probar %%A %%B
GOTO :FIN

:probar
ping %1 -n 1 -w 1 > nul
IF ERRORLEVEL 1 GOTO mal
ECHO %1 %2 "ONLINE" >>info.txt
GOTO :EOF

:mal
ECHO %1 %2 "OFFLINE" >>info.txt
GOTO :EOF
:FIN

@ECHO ON

TYPE info.txt

PAUSE