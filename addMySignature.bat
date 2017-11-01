find "/*" listTester.java > nul
if %errorlevel% equ 1 goto found
exit

:found
echo /* > temp.txt
echo  * Khaled Mohammad >> temp.txt
echo  * CSE111 LAB 1 (STAR LAB) >> temp.txt
echo  */ >> temp.txt
type listTester.java >> temp.txt
type temp.txt > listTester.java
