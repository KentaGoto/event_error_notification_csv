@echo off

setlocal

rem システムのイベントエラーを csv に書き出す
wmic ntevent where "(logfile='system' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_sys.csv"

rem アプリケーションのイベントエラーを csv に書き出す
wmic ntevent where "(logfile='application' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_app.csv"

echo Complete!
echo それぞれのログは %~dp0% に出力されています。

endlocal