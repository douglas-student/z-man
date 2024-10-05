#!/bin/bash

# Define colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
RESET="\033[0m"  # Reset to default color code

# Example usage
# echo -e "${RED}Hello, World!${RESET}"

# Function to center text
center_text() {
    local text="$1"
    local margin_left=45               # Define the left margin with 40 columns
    local total_width=77               # Define the width where you want to center (77 columns)
    local text_width=${#text}          # Get the text width
    local spaces=$(( (total_width - text_width) / 2 ))  # Calculate spaces for center alignment
    local total_spaces=$(( margin_left + spaces ))      # Add margin to the calculated spaces
    printf "%${total_spaces}s" ""      # Print the combined margin and spaces
    echo -e "$text"                    # Print the text
}

# Show the Z-MAN ART ASCII
cat ../asset/zman-ascii.txt | while IFS= read -r linha; do
    echo -e "${CYAN}${linha}${RESET}"
done

echo -e "\n"
echo -e "\n"

center_text "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

center_text "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

center_text "Criando usuários..."

# Alterando o método de hash para -1 (MD5)
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

center_text "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo -e "\n"
echo -e "\n"

# Show the USERS-CREATED ART ASCII
cat ../asset/users-created-ascii.txt | while IFS= read -r linha; do
    echo -e "${CYAN}${linha}${RESET}"
done

echo -e "\n"
echo -e "\n"
