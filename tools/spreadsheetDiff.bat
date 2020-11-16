@ECHO OFF

setlocal EnableExtensions

REM Input arguments from `git diff` are:
REM    $1     $2      $3      $4       $5       $6      $7
REM   path old-file old-hex old-mode new-file new-hex new-mode

REM Create paths to original and current spreadsheets to store in tmp
set path1=%2
set path2=%5

REM Change forward slash to back slash on all paths for the Excel tool
set path1=%path1:/=\%
set path2=%path2:/=\%

REM Create Uniq temp file
:uniqLoop
set "tempFileName=%tmp%\gitDiff~%RANDOM%.tmp"
if exist "%tempFileName%" goto :uniqLoop

REM Clean up paths and write to tmp file as spreadsheetcompare requires input to be passed inside of a file.
dir %path1% /B /S > %tempFileName%
dir %path2% /B /S >> %tempFileName%

"C:\Program Files\Microsoft Office\root\vfs\ProgramFilesX86\Microsoft Office\Office16\DCF\SPREADSHEETCOMPARE.EXE" %tempFileName%
 