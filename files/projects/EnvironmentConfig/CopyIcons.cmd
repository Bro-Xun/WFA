echo off
cd /d %~dp0
:: ��ʼ��ȡ����ԱȨ��
setlocal
set uac=~uac_permission_tmp_%random%
md "%SystemRoot%\system32\%uac%" 2>nul
if %errorlevel%==0 ( rd "%SystemRoot%\system32\%uac%" >nul 2>nul ) else (
    echo set uac = CreateObject^("Shell.Application"^)>"%temp%\%uac%.vbs"
    echo uac.ShellExecute "%~s0","","","runas",1 >>"%temp%\%uac%.vbs"
    echo WScript.Quit >>"%temp%\%uac%.vbs"
    "%temp%\%uac%.vbs" /f
    del /f /q "%temp%\%uac%.vbs" & exit )
endlocal
:: ��ɻ�ȡ,������Կ�ʼд���Լ��Ĵ�����
title BroXun�Զ�����չ��ͼ�껷������
echo ��ʹ�ù���ԱȨ������
pause
del "C:\Program Files\BroXun\*"
rd "C:\Program Files\BroXun"
md "C:\Program Files\BroXun"
cd
copy "src\*.ico" "C:\Program Files\BroXun\*ico"
echo ���
pause