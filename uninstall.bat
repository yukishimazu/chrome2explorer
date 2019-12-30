@echo off

NET SESSION > NUL 2>&1
IF %ERRORLEVEL% == 0 (
	REG DELETE "HKCR\chrome2explorer" /f
	pause
) ELSE (
	echo "ŠÇ—ÒŒ ŒÀ‚ÅÀs‚µ‚Ä‚­‚¾‚³‚¢B"
	pause
	EXIT /B 1
)

