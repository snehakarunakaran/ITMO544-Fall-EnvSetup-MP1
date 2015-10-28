#!/bin/bash

sudo apt-get -y update 
sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl
sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php


sudo git clone https://github.com/snehakarunakaran/ITMO544-Fall-Application-MP1.git

sudo mv ITMO544-Fall-Application-MP1 /var/www/html
sudo mv /var/www/html/ITMO544-Fall-Application-MP1/*.php /var/www/html
pw=letmein
export pw



echo "Success" > /tmp/hello.txt






