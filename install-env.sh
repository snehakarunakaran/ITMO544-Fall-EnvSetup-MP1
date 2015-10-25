#!/bin/bash

sudo apt-get -y update 
sudo apt-get install -y apache2 git php5 php5-mysql php5-curl mysql-client curl
sudo curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php


sudo git clone https://github.com/snehakarunakaran/ITMO544-Fall-Application.git

mv ./ITMO544-Fall-Application/images /var/www/html/images
mv ./ITMO544-Fall-Application/index.html /var/www/html
mv ./ITMO544-Fall-Application/page2.html /var/www/html

echo "Success" > /tmp/hello.txt






