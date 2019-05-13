rem ******mysql备份开始********
@echo off

forfiles /p "D:\mysql_bakup" /m *.sql -d -15 /c "cmd /c del /f @path"

set "Ymd=%date:~0,4%%date:~5,2%%date:~8,2%0%time:~1,1%%time:~3,2%%time:~6,2%"
D:\mysql\mysql-5.6.38-winx64\bin\mysqldump -uroot -p123456 --all-databases --lock-tables=false --flush-logs > D:\mysql_bakup\%Ymd%.sql

@echo on
rem ******mysql备份结束********
