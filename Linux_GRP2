#!bin/bash

echo "Atualizando o servidor..."

sudo apt update -y
sudo apt upgrade -y


echo "Instalando Apache, unzip..."

sudo apt install apache2 -y
sudo apt install unzip -y

echo "Donwload das aplicacoes..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-projeto2-iac
unzip main.zip

echo "Enviando arquivos para repositorio..."

cd linux-site-dio-main
cp -r * /var/www/html/
