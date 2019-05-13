#!/bin/bash
#mysql备份数据存放目录
dir=/data/mysql_bak
user=root
password=123456
#删除3天前数据
find $dir -mtime +3 -name '*.sql' -exec rm -rf {} \;
mkdir -p $dir
#导出数据
/usr/local/mysql/bin/mysqldump  -u$user -p$password --all-databases --lock-tables=false --flush-logs --triggers --routines --events >$dir/`date +%Y%m%d`.sql

