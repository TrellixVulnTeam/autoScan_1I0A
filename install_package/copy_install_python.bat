@echo off


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::�ýű����ڰ�װpython3 and pip3 and ipython3,��Ӱ��ԭ����python����
::python3 install dirctory c:\python37
::pip runing command is pip3 and ipython is same
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

title python��װ�ű�
set curr_dir=%~dp0
::echo [+] ��ǰĿ¼�� %curr_dir%
echo [+] Is copy...

::python3  install
if exist "C:\python37" (
    rmdir /q /s "C:\python37"
   )
xcopy "%curr_dir%python37" "C:\python37" /e /y /i
if errorlevel 0 goto success
echo [-] error : python installation failed. %errorlevel%
pause
exit

:success
echo [+] python installation completed,it is success


