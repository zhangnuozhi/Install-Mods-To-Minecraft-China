@echo off setlocal enabledelayedexpansion
:check
tasklist  >temp_list.txt
type temp_list.txt | find "javaw.exe"
if errorlevel 1 goto 1
if errorlevel 0 goto 0

:0
copy /y ********(1-1)*************** ******(2-1)******
copy /y ********(1-2)*************** ******(2-2)******

:1
goto exit 

:exit  
del /f /q temp_list.txt