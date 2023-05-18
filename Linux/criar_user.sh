#!/bin/bash
 
echo "Criando usuários do sistema..."

useradd guest10 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest10 -e



useradd guest12 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest12 -e


useradd guest13 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest13 -e


useradd guest11 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest11 -e

echo "Usuários Criados!"
