@echo off
REM -- Prepare the Command Processor --
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

::BatchSubstitude - parses a File line by line and replaces a substring
::Recieves as input: Lookup value, new password replacement length, file to search, and output filename. 
::Finds the lookup value, calls passwordgenerater.bat, sends password length, retrieves password, overwrites lookup value, proceeds to next line.
::Modified from http://www.dostips.com/DtCodeBatchFiles.php#Batch.FindAndReplace
if "%~1"=="" findstr "^::" "%~f0"&GOTO:EOF
for /f "tokens=1,* delims=]" %%A in ('"type %3|find /n /v """') do (
    set "line=%%B" 
    if defined line (
  call passgenerator.bat %2
        call set "line=echo.%%line:%~1=!_pass!%%" 
        for /f "delims=" %%X in ('"echo."%%line%%""') do %%~X
    ) ELSE echo.
)

::BatchSubstitude - parses a File line by line and replaces a substring::Recieves as input: Lookup value, new password replacement length, file to search, and output filename. ::Finds the lookup value, calls passwordgenerater.bat, sends password length, retrieves password, overwrites lookup value, proceeds to next line.::Modified from http://www.dostips.com/DtCodeBatchFiles.php#Batch.FindAndReplaceif "%~1"=="" findstr "^::" "%~f0"&GOTO:EOFfor /f "tokens=1,* delims=]" %%A in ('"type %3|find /n /v """') do (    set "line=%%B"     if defined line (  call passgenerator.bat %2        call set "line=echo.%%line:%~1=!_pass!%%"         for /f "delims=" %%X in ('"echo."%%line%%""') do %%~X    ) ELSE echo.)
