@echo off

NET SESSION > NUL 2>&1
IF %ERRORLEVEL% == 0 (
	REG ADD "HKCR\chrome2explorer" /v "URL protocol" /t REG_SZ /f
	REG ADD "HKCR\chrome2explorer\shell\open\command" /ve /t REG_SZ /d "\"C:\chrome2explorer.bat\" \"%%1\"" /f
	pause
) ELSE (
	echo "�Ǘ��Ҍ����Ŏ��s���Ă��������B"
	pause
	EXIT /B 1
)
