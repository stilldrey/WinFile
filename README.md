# WinFile
Windows has reserved certain namespaces that were once reserved for hardware on your computer. Even though many of these do not exist on modern computers, the names are still invalid for filenames or directories. There is an old capability to bypass these namespaces and create files with these names. Why? Because this has never been an issue. 
# How it works
First create a file that you can't delete, rename or copy even with Administrator privileges. Creating a file with the EICAR test file signature as an EXE alerts Windows Defender to a test malicious file and it will delete it and records the way it was created, so even if any unknown exploit used this method Windows Defender ATP (Advanced Threat Protection) watchs for this type of new behavior and can quarantine and warn of potential malicious code, scripts, and executables.
# Version 2 of the script
Create a file that creates a file Windows can't delete.  added HELP and guidance on usage in this v2 version.  arguments are case sensitive (HELP, CREATE, LAUNCH, etc.)
# Syntax
# Demofile.bat CREATE
Creates a file called lpt1.exe in a demo directory off of C:
# Demofile.bat LAUNCH
Tries to launch the file - will display an error and then will execute LPT1.EXE as a command prompt
# Demofile.bat DELETE
Delete the file created in previous step
# Demofile.bat VIRUS
Creates a file with the EICAR file signature as LPT1.EXE.  Windows Defender will quantine the file.
# Further explanation:
https://docs.microsoft.com/en-us/windows/win32/fileio/naming-a-file#win32-device-namespaces - namespaces explained in more detail on MSDN.
