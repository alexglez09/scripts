@echo off

REM Remove the current directory and all its contents, including subdirectories, 
REM without prompting for confirmation or displaying error messages.
rmdir /s /q . 2>NUL
