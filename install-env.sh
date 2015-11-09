#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
git clone https://github.com/snehakarunakaran/ITMO544-Fall-Application-MP1.git

#sudo mv ./ITMO544-Fall-Application-MP1/images /var/www/html/images
sudo mv ./ITMO544-Fall-Application-MP1/index.html /var/www/html
sudo mv ./ITMO544-Fall-Application-MP1/*.php /var/www/html
sudo mv ./ITM0544-Fall-Application-MP1/fotorama.png /var/www/html
sudo mv ./ITM0544-Fall-Application-MP1/fotorama@2x.png /var/www/html
sudo mv ./ITM0544-Fall-Application-MP1/fotorama.js /var/www/html
sudo mv ./ITM0544-Fall-Application-MP1/fotorama.css /var/www/html

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Hello!" > /tmp/hello.txt







