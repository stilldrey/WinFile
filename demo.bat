IF [%1]==[] ECHO Value Missing
IF [%1]==[] GOTO :END
IF %1==create GOTO :CREATE 
IF %1==launch GOTO :LAUNCH
IF %1==del GOTO :DELETE 
:CREATE
c:
md\demo
cd\demo
copy c:\windows\system32\cmd.exe \\.\c:\demo\lpt1.exe
GOTO :END
:LAUNCH
start c:\demo\lpt1.exe
@echo THE PREVIOUS STATEMENT WILL FAIL WITH THE FOLLOWING ERROR MESSAGE
@echo ' ' is not recognized as an internal or external command,
@echo operable program or batch file.
@pause
start \\.\c:\demo\lpt1.exe
@echo this version should have opened a command prompt as LPT1
@pause
GOTO :END
:DELETE
c:
cd\demo
del \\.\c:\demo\lpt1.exe
:END