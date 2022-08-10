#! /bin/bash

# Criando estrutura desafio Linux IAC

echo "Criando diretórios..."
mkdir -v /publico
mkdir -v /adm
mkdir -v /ven
mkdir -v /sec

echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo permissões..."
chown -v root:GRP_ADM /adm
chown -v root:GRP_VEN /ven
chown -v root:GRP_SEC /sec

chmod -v 777 /publico
chmod -v 770 /adm
chmod -v 770 /ven
chmod -v 770 /sec

echo "Criando Usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)

echo "Fim!..."