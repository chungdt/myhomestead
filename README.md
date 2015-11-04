
@author : DuongThanhChung
@email : chungdt@evolableasia.vn

************************************************Start************************************************

# Introduction

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
+ Open file config.yaml setup directory for website, for data mysql,.....

+ vagrant up : create environment and run provision on machines

+ vagrant ssh :  SSH into machine
 	Test:
		php -v
		nginx -v (-V)

+ Access to docker Master MySQL container using the docker command line:

	`sudo docker exec -it mysql mysql -uadmin -p`
	`password: 123456`
+ Access to docker slave MySQL container using the docker command line:

	`sudo docker exec -it slave mysql -uadmin -p`
	`password: 123456`

+ open /etc/hosts and ADD 

	`192.168.44.45  superstar.dev`
	`192.168.44.45  hawaiioption.dev`
	`192.168.44.45  api.dev`

+ cd /home/USERNAME/allproject
Remove directory hawaiioption, superstar and api
	git clone URL_git hawaiioption
	git clone URL_git superstar
	git clone URL_git api

	cd /home/USERNAME/allproject/hawaiioption
		+ Check exits file .env if not exist is touch .env
		+ php artisan key:generate
		+ chmod 777 -R storage/
		+ chmod 777 -R bootstrap/
	The same for superstar and api
# NOTE
+ 192.168.44.45 : ip for machines add host

************************************************End************************************************

