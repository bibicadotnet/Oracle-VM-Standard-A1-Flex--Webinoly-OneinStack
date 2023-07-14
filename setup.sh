#!/bin/bash
# setup Webinoly php 7.4
locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

sudo apt update && sudo apt upgrade -y
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y

sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Oracle-VM-Standard-A1-Flex-Webinoly/main/vm_standard_a1_flex.conf -O /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light

sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F

sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Oracle-VM-Standard-A1-Flex-Webinoly/main/php.ini -O /etc/php/7.4/fpm/php.ini
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Oracle-VM-Standard-A1-Flex-Webinoly/main/www.conf -O /etc/php/7.4/fpm/pool.d/www.conf
sudo service php7.4-fpm restart
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Oracle-VM-Standard-A1-Flex-Webinoly/main/my.cnf -O /etc/mysql/my.cnf
sudo service mysql restart

sudo apt update && sudo apt upgrade -y
sudo webinoly -verify
sudo webinoly -info
