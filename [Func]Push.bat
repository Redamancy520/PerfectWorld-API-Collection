@echo off
cd /d %~dp0
echo ========================================
echo ? Git һ���ύ & ���ͽű� by è�� ?
echo ========================================
echo.

:: ��� Git �Ƿ�װ
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ? δ��⵽ Git�����Ȱ�װ Git��
    pause
    exit /b
)

:: �л����ֿ�Ŀ¼
cd /d %~dp0

:: ��ȡ���´��룬��ֹ��ͻ
echo ? ������ȡ���´���...
git pull origin main

:: ������и���
echo ? ��ӱ��ظ���...
git add .

:: ��ȡ��ǰʱ����Ϊ�ύ��Ϣ
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value ^| find "="') do set datetime=%%i
set commit_message=? ������ %datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%

:: �ύ����
echo ? �ύ���ģ�%commit_message%
git commit -m "%commit_message%"

:: ���͵�Զ�ֿ̲�
echo ? ���͵� GitHub...
git push origin main

echo ? ������ɣ�?
pause
