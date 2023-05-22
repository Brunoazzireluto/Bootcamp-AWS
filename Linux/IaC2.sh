#!/bin/bash

echo "Atualizando sistema e adicionando programas necessarios"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando arquivos para a pasta do apache"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "Ativando e Deixando Apache automatico"

systemctl start apache2
systemctl enable apache2
systemctl restart apache2 

echo "Site pronto, verifique o ip da maquina"
