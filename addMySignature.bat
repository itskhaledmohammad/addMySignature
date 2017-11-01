set tempFile=tempSign
echo off
cls
find "/*" listTester.java > nul
if %errorlevel% equ 1 goto found
echo Nothing to add. The signatures already exsits
exit

:found
echo /* > %tempFile%
echo  * Khaled Mohammad >> %tempFile%
echo  * CSE111 LAB 1 (STAR LAB) >> %tempFile%
echo  */ >> %tempFile%
type listTester.java >> %tempFile%
type %tempFile% > listTester.java
echo Added your signature successfully.
