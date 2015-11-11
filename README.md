Contact: thanhchung2006@gmail.com
# Introduction

Script setup environment includes vagrant (centos 7, php 7, nginx) and mysql docker replication - Master/Slave. Using framework laravel 5

* Before RUN Vagrantfile please: 

+ Install(Vagrant, virtualBox)

	https://www.vagrantup.com/downloads.html
	https://www.virtualbox.org/wiki/Downloads

+ Stop port 3306 if exist

Vagrantfile to build : 

	+ OS : centos 7
	+ Web server (based PHP-FPM and Nginx)
	+ PHP : 7
	+ Mysql : Build docker mysql 

# Quick Start

+ Run init.sh for create directories config in file config.yaml
	`sh init.php`	
+ vagrant up : create environment and run provision on machines

+ vagrant ssh :  SSH into machine

+ Access to docker Master MySQL container using the docker command line:

	* Connect from host containing your Vagrantfile: `mysql -uadmin -p123456 -h192.168.44.45`
		
	* Connect on virtual machine: `sudo docker exec -it mysql mysql -uadmin -p123456`
 
+ Access to docker slave MySQL container using the docker command line:

	`sudo docker exec -it slave mysql -uadmin -p`
	`password: 123456`

+ Open /etc/hosts and ADD:

	`192.168.44.45  site1.dev site2.dev api.dev`
	
+ Get, config source code of site1, site2, api
	* cd /home/USERNAME/allproject: `git clone URL_git site1, site2, api`
	* Check exits file .env if not exist is touch .env 
	* php artisan key:generate
	* chmod 777 -R storage/
	* chmod 777 -R bootstrap/

