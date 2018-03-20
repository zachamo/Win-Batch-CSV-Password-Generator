@echo off
Setlocal EnableDelayedExpansion

:: Scans files matching specified format and overwrites placeholder password with a generated one in all files matching the pattern, creating a new file with prefix ‘pw’

SET _outputprefix=pw
SET _filename=utoronto_smartorg_users_*.csv
SET _PlaceholderPassword=PassPlaceholder
SET _PassLen=10

cd %~dp0
for %%f in (!_filename!) do (
 echo %%~nf.csv
 call FindReplace.bat !_PlaceholderPassword! !_PassLen! %%~nf.csv >!_outputprefix!%%~nf.csv
    )
