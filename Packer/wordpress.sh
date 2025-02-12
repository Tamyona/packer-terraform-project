#!/bin/bash

sleep 30

sudo yum update -y

sudo yum install git -y
sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz
sudo mv wordpress/* /var/www/html
sudo rm -rf wordpress/
sudo systemctl start mariadb httpd
sudo systemctl enable mariadb httpd