#!/bin/bash

sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "<html><body><h1>Hello, world!</h1></body></html>" > /var/www/html/index.html
sudo systemctl restart apache2
echo "bonjour raphael"