@IF [%1]==[] @ECHO Value Missing - type DEMOFILE HELP for assistance
@IF [%1]==[] GOTO :END
@IF %1==HELP GOTO :HELP 
@IF %1==CREATE GOTO :CREATE 
@IF %1==LAUNCH GOTO :LAUNCH
@IF %1==DELETE GOTO :DELETE 
@IF %1==VIRUS GOTO :VIRUS
:CREATE
@ECHO Creating the 
@c:
@md\demo
@cd\demo
copy c:\windows\system32\cmd.exe \\.\c:\demo\lpt1.exe
@GOTO :END
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
@GOTO :END
:VIRUS
echo X5O!P%%@AP[4\PZX54(P^^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H* >>\\.\c:\demo\lpt1.exe
@GOTO :END
:HELP
@Echo type DEMOFILE CREATE to create the LPT1 file that cannot be deleted
@Echo type DEMOFILE LAUNCH to open a file called LPT1 which is actually the command prompt
@Echo type DEMOFILE DELETE to delete the demo file
@Echo type DEMOFILE VIRUS to delete the demo file
:END