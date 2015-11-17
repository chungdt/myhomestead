#!/usr/bin/env bash

mysqlRoot1=~/allproject/datamysql/mysql01
mysqlRoot2=~/allproject/datamysql/mysql02
site1Root=~/allproject/site1/public
site2Root=~/allproject/site2/public
apiRoot=~/allproject/api/public

mkdir -pv "$mysqlRoot1"
mkdir -pv "$mysqlRoot2"
mkdir -pv "$site1Root"
mkdir -pv "$site2Root"
mkdir -pv "$apiRoot"

echo "Create directories successful!"
