@echo off

setlocal

rem �V�X�e���̃C�x���g�G���[�� csv �ɏ����o��
wmic ntevent where "(logfile='system' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_sys.csv"

rem �A�v���P�[�V�����̃C�x���g�G���[�� csv �ɏ����o��
wmic ntevent where "(logfile='application' and timegenerated >= '%DATE:/=%' and (EventType='1' or EventType='2'))" list /format:CSV > "%~dp0%COMPUTERNAME%_%DATE:/=%_app.csv"

echo Complete!
echo ���ꂼ��̃��O�� %~dp0% �ɏo�͂���Ă��܂��B

endlocal