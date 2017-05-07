@echo off
rem *** this would generate a nt-textmode exec!
c:\pub\watcom\binnt\wcl386 %1 /dWINNT /otl 
rem *** this generates a dos32-exec!
c:\pub\watcom\binw\wcl386 %1 /dDOS4G /otl /fo=%1d.obj /fe=%1d.exe /k10240
echo.
if errorlevel 1 goto fehler
echo *** compilation successful! ***
goto ende
:fehler
echo *** compilation UNSUCCESSFUL! ***
:ende
echo.
echo use: [watcompath]\binnt\wcl386 for nt-textmode exec's
echo      [watcompath]\binw\wcl386  for dos4gw exec's
echo.
