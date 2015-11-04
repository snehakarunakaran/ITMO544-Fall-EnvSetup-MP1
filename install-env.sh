#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl mysql-client curl php5-mysql
git clone https://github.com/snehakarunakaran/ITMO544-Fall-Application-MP1.git

#mv ./ITMO544-Fall-Application-MP1/images /var/www/html/images
mv ./ITMO544-Fall-Application-MP1/index.html /var/www/html
mv ./ITMO544-Fall-Application-MP1/*.php /var/www/html
mv ./ITM0544-Fall-Application-MP1/*.png /var/www/html
mv ./ITM0544-Fall-Application-MP1/*.js /var/www/html
mv ./ITM0544-Fall-Application-MP1/*.css /var/www/html

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt

sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

sudo mv vendor /var/www/html &> /tmp/movevendor.txt

#sudo php /var/www/html/setup.php &> /tmp/database-setup.txt

echo "Hello!" > /tmp/hello.txt







