#!/bin/bash

echo "Instalação do servidor Apache Web."

echo "Atualizando o servidor Linux:"

sudo apt-get update && sudo apt-get upgrade -y

echo "Instalando o servidor Apache e o aplicativo Unzip:"
sudo apt-get install apache2 unzip -y 

echo "Baixando a aplicação Web:"

cd /tmp
wget htpps://github.com/denilsonbonatti/liux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando o aplicativo:"

unzip main.zip

echo "Copiando o aplicativo:"

cd linux-site-dio
cp -R * /var/www/html


echo "Concluído."