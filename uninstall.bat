@echo off

NET SESSION > NUL 2>&1
IF %ERRORLEVEL% == 0 (
	REG DELETE "HKCR\chrome2explorer" /f
	pause
) ELSE (
	echo "管理者権限で実行してください。"
	pause
	EXIT /B 1
)

