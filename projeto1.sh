#!/bin/bash

echo "Criação de usuários, grupos e diretórios."

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários..."

useradd carlos -c "Carlos Almeida" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd maria -c "Maria Ferreira" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd joao -c "João Fonseca" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_ADM
useradd debora -c "Débora Marques" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd sebastiana -c "Sebastiana Lopes" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd roberto -c "Roberto Yamada" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_VEN
useradd josefina -c "Josefina Gomes" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd amanda -c "Amanda Dias" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC
useradd rogerio -c "Rogério Soares" -m -s /bin/bash -p $(openssl passwd -crypt Senha1234) -G GRP_SEC


echo "Ajustando as permissões dos diretórios aos grupos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Ajustando permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Concluído."


