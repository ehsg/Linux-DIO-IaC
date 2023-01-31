#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Group Creation:"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "User Creation:"

useradd carlos -m -s /bin/bash -c "Carlos Alberto" -p $(openssl passwd 
-crypt Password) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria Joaquina" -p $(openssl passwd
-crypt Password) -G GRP_ADM
useradd joao -m -s /bin/bash -c "Joao Machado" -p $(openssl passwd
-crypt Password) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora Menezes" -p $(openssl passwd
-crypt Password) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana Silva" -p $(openssl 
passwd
-crypt Password) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto Gomes" -p $(openssl passwd
-crypt Password) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina Perez" -p $(openssl passwd
-crypt Password) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Santos" -p $(openssl passwd
-crypt Password) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio Cadoso" -p $(openssl passwd
-crypt Password) -G GRP_SEC

echo "Directory Permission:"

chown root:GRP_ADM /adm
chowb root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Done!"

