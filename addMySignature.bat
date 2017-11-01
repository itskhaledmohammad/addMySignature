set tempFile=tempSign
set name=Khaled Mohammad
set id=24353221
set subject=CSE111
set section=SECTION 10
set assignment=LAB 01

echo off
cls
for /r %%i in (*.java) do (call :loop %%i)
exit

:loop
find "%name%" %1 > nul & find "%id%" %1 > nul
set level=%errorlevel%
if %level% equ 1 (call :found %1)
if %level% equ 0 echo Nothing to add. The signatures already exsits
goto :eof

:found
echo /* > %tempFile%
echo  * %name% >> %tempFile%
echo  * %id% >> %tempFile%
echo  * %subject% %section% >> %tempFile%
echo  * %assignment% >> %tempFile%
echo  */ >> %tempFile%
type %1 >> %tempFile%
type %tempFile% > %1
del %tempFile%
echo Added your signature successfully.
goto :eof
