@echo off

NET SESSION > NUL 2>&1
IF %ERRORLEVEL% == 0 (
	REG DELETE "HKCR\chrome2explorer" /f
	pause
) ELSE (
	echo "�Ǘ��Ҍ����Ŏ��s���Ă��������B"
	pause
	EXIT /B 1
)

