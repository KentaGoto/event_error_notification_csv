@echo off

setlocal

rem Exporting system event errors to csv
wmic ntevent where "(logfile='system' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_sys.csv"

rem Exporting application event errors to csv
wmic ntevent where "(logfile='application' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_app.csv"

echo Complete!
echo Each log is written to %~dp0%

endlocal
