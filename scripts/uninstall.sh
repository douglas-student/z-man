#!/bin/bash

echo "Desfazendo alterações feitas pelo iac1.sh..."

# Remover usuários
echo "Removendo usuários..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Remover grupos
echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Remover diretórios
echo "Removendo diretórios..."
rm -r /publico
rm -r /adm
rm -r /ven
rm -r /sec

echo "Todas as alterações foram desfeitas!"
