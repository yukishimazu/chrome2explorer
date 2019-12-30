@echo off

SET s1=%1

SET s2=%s1:~17,-1%

@rem local file path
SET s3=%USERPROFILE%\%s2%
@rem network file path
@rem SET s3=\\server\%s2%

explorer ""%s3%""