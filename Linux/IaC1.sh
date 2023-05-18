#!/bin/bash

echo "... Criando Diretórios..."

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publica


echo "...Diretórios Criados..."

echo "...Criando  Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "...Grupos Criados..."

echo "...Criando Usuários do grupo ADM..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "...Criando Usuários do grupo VEN..."

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "...Criando Usuários do grupo SEC..."

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "...Usuários Criados..."

echo "...Especificando as permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm  
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "...Terminando Código..."
