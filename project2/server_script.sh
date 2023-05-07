#!/bin/bash

echo "Atualizando Sitema"
agt-get update
apt-get upgrade -y

echo "Instalando os Programas"
apt install apache2 -y
apt install unzip -y

echo "Baixando arquivos do site"
cd  /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

echo "Tudo Pronto! Seu site está no ar"
