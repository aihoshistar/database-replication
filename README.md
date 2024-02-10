# database-replication

## Master 에서 해야할 일

```
$ docker exec -it mysql_slave mysql -u root -p

mysql> SHOW MASTER STATUS\G;
*************************** 1. row ***************************
             File: mysql-bin.000003
         Position: 158
     Binlog_Do_DB: 
 Binlog_Ignore_DB: 
Executed_Gtid_Set: 
1 row in set, 1 warning (0.00 sec)

ERROR: 
No query specified
```

File 의 mysql-bin.000003 을 확인해야한다.

## slave 에서 해야할 일
```
CHANGE MASTER TO MASTER_HOST='mysql_master', MASTER_USER='root', MASTER_PASSWORD='password', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=0, GET_MASTER_PUBLIC_KEY=1;

start slave;

show slave status\G;
```