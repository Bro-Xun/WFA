echo off
cd /d %~dp0
:: 开始获取管理员权限
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
:: 完成获取,下面可以开始写你自己的代码了
title BroXun自定义扩展名图标环境配置
echo 请使用管理员权限运行
pause
del "C:\Program Files\BroXun\*"
rd "C:\Program Files\BroXun"
md "C:\Program Files\BroXun"
cd
copy "src\*.ico" "C:\Program Files\BroXun\*ico"
echo 完成
pause