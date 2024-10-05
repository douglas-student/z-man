#!/bin/bash

echo "Undoing changes made by iac1.sh..."

# Remove users
echo "Removing users..."
userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

# Remove groups
echo "Removing groups..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Remove directories
echo "Removing directories..."
rm -r /publico
rm -r /adm
rm -r /ven
rm -r /sec

echo "All changes have been undone!"
