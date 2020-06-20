#!/bin/bash

## update the system
sudo apt update -y
sudo apt upgrade -y

## install packages
yes | sudo apt mysql-server python3-pip
sudo pip3 install pymysql sense_hat

## configure mysql
sudo mysql_secure_installation

echo "Done :)"
