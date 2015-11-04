#!/usr/bin/env bash

### update Repositories 
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

### install PHP 7 dependencies
yum -y install --enablerepo=webtatic-testing php70w php70w-cli php70w-common php70w-fpm php70w-gd php70w-mbstring \
php70w-mcrypt php70w-mysql php70w-odbc php70w-opcache php70w-pdo php70w-pecl-memcache php70w-soap php70w-xml php70w-devel\
php70w-mysqlnd php70w-pdo_dblib php70w-pgsql php70w-phpdbg php70w-process php70w-pspell php70w-recode php70w-snmp php70w-tidy php70w-xmlrpc \
php70w-ldap php70w-intl php70w-interbase php70w-imap php70w-dba php70w-bcmath

#yum -y install epel-release
# ------------------------------------------------------------


