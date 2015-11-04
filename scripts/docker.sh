#!/usr/bin/env bash

### run container 
docker run -d -v /var/lib/mysql01:/var/lib/mysql -e MYSQL_PASS=123456 -e REPLICATION_MASTER=true -e REPLICATION_PASS=admin -p 3306:3306 --name mysql tutum/mysql
docker run -d -v /var/lib/mysql02:/var/lib/mysql -e MYSQL_PASS=123456 -e REPLICATION_SLAVE=true -p 3307:3306 --link mysql:mysql --name slave tutum/mysql

### print IPAddress of container mysql
echo "IPAddress of container master"
docker inspect -f '{{ .NetworkSettings.IPAddress }}' mysql
echo "IPAddress of container slave"
docker inspect -f '{{ .NetworkSettings.IPAddress }}' slave
