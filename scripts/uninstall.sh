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

center_text "Undoing changes made by iac1.sh..."

# Remove users
center_text "Removing users..."
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
center_text "Removing groups..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Remove directories
center_text "Removing directories..."
rm -r /publico
rm -r /adm
rm -r /ven
rm -r /sec

center_text "All changes have been undone!"

# Show the USERS-CREATED ART ASCII
cat ../asset/users-created-ascii.txt | while IFS= read -r linha; do
    echo -e "${CYAN}${linha}${RESET}"
done

echo -e "\n"
echo -e "\n"
