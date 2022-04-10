#!/bin/bash
sudo apt update 
sudo apt-get install nginx -y
echo "this is techserverglobal" >> /var/www/html/index.nginx-debian.html
sudo systemctl start nginx
sudo systemctl enable nginx
