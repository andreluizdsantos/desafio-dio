#! /bin/bash

# Removendo estrutura criada para o desafio Linux IAC

echo "Removendo Diretórios..."
rm -Rf -v /publico
rm -Rf -v /adm
rm -Rf -v /ven
rm -Rf -v /sec

echo "Removendo Usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Removendo Grupos..."
delgroup GRP_ADM
delgroup GRP_VEN
delgroup GRP_SEC

echo "Fim!..."