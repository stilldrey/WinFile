# WinFile
Create a file that creates a file Windows can't delete.  added HELP and guidance on usage in this v2 version
# Syntax
Demofile.bat CREATE
#
Creates a file called lpt1.exe in a demo directory off of C:
demofile.bat LAUNCH
Tries to launch the file - will display an error and then will execute LPT1.EXE as a command prompt
Demofile.bat DELETE
Delete the file created in previous step
Demofile.bat VIRUS
Creates a file with the EICAR file signature as LPT1.EXE.  Windows Defender will quantine the file.
