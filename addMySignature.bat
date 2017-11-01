set tempFile=tempSign
set name=Khaled Mohammad
set id=24353221
set subject=CSE111
set section=SECTION 10
set assignment=LAB 01

echo off
cls
find "/*" listTester.java > nul
if %errorlevel% equ 1 goto found
echo Nothing to add. The signatures already exsits
exit

:found
echo /* > %tempFile%
echo  * %name% >> %tempFile%
echo  * %id% >> %tempFile%
echo  * %subject% %section% >> %tempFile%
echo  * %assignment% >> %tempFile%
echo  */ >> %tempFile%
type listTester.java >> %tempFile%
type %tempFile% > listTester.java
del %tempFile%
echo Added your signature successfully.
