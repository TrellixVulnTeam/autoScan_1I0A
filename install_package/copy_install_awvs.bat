@echo off

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::�ýű����ڰ�װawvs
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
title awvs��װ�ű�
set curr_dir=%~dp0

::echo [+] ��ǰĿ¼�� %curr_dir%

::awvs main program
if exist "C:\Program Files\Acunetix" (
    rmdir /q /s "C:\Program Files\Acunetix"
)
xcopy "%curr_dir%Acunetix" "C:\Program Files\Acunetix" /e /y /i
if %errorlevel% neq 0 goto false


if exist "C:\ProgramData\Acunetix WVS 10" (
    rmdir /q /s "C:\ProgramData\Acunetix WVS 10"
)

mkdir "C:\ProgramData\Acunetix WVS 10"
xcopy "%curr_dir%Acunetix WVS 10" "C:\ProgramData\Acunetix WVS 10" /e /y /i
if errorlevel 0 goto success

:false
echo [-] error : Acunetix installation failed. %errorlevel%
pause
exit

:success
echo [+] wvs installation completed,it is success








