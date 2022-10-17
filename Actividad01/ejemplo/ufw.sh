#!/bin/bash

#enable permissions
#chmod u+r+x ./vuelo/compile.sh 
#chmod u+r+x deploy.sh

sudo ufw enable
#sudo ufw deny from 203.0.113.0/24
#Habilitar conexiones SSH
#sudo ufw allow ssh
#sudo ufw allow 22
#Habilitar conexiones remotely mongodb
sudo ufw allow 80
sudo ufw allow 81
sudo ufw allow 22
sudo ufw allow 27017
sudo ufw allow 5672
sudo ufw allow 15672
sudo ufw allow 5080
sudo ufw allow 7080
sudo ufw status
#sudo ufw disable
