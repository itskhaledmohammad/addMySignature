set tempFile=tempSign
set name=Khaled Mohammad
set id=24353221
set subject=CSE111
set section=SECTION 10
set assignment=LAB 01

echo off
cls
set /p name="Name:"
set /p id="Id:"
set /p subject="Subject:"
set /p section="Section:"
set /p assignment="Assignment/Lab(ex. Lab 1):"
for /r %%i in (*.java) do (call :loop %%~ni%%~xi)
goto :eof
exit

:loop
findstr "%name%" %1 > nul & findstr "%id%" %1 > nul
set level=%errorlevel%
if %level% equ 1 (call :found %1)
if %level% equ 0 echo %1: Nothing to add. There is a signature already in the file.
goto :eof

:found
echo /* > %tempFile%
echo  * %name% >> %tempFile%
echo  * %id% >> %tempFile%
echo  * %subject% SECTION %section% >> %tempFile%
echo  * %assignment% >> %tempFile%
echo  */ >> %tempFile%
type %1 >> %tempFile%
type %tempFile% > %1
del %tempFile%
echo %1: Added your signature successfully.(%i)
goto :eof
