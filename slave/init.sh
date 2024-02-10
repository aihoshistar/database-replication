#! /bin/bash

CHANGE MASTER TO MASTER_HOST='172.23.0.3', MASTER_USER='root', MASTER_PASSWORD='password', MASTER_LOG_FILE='mysql-bin.000013', MASTER_LOG_POS=0, GET_MASTER_PUBLIC_KEY=1;

start slave;

show slave status\G;
