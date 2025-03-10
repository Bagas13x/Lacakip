#!/bin/bash

# Warna teks
red='\033[1;31m'
white='\033[1;37m'
cyan='\033[1;36m'
yellow='\033[1;33m'
blue='\033[1;34m'
reset='\033[0m'

# Clear layar sebelum tampilkan banner
clear

# Animasi Loading
echo -ne "${yellow}Loading."
sleep 0.5
echo -ne " Welcome "
sleep 0.5
echo -ne " To Place"
sleep 0.5
echo -ne " DayCodexs "
sleep 0.5
echo -e "${reset}\n"

# Bendera Indonesia
echo -e "${red}█████████████████████"
echo -e "█████████████████████${reset}"
echo -e "${white}█████████████████████"
echo -e "█████████████████████${reset}"

# Header (Sama seperti sebelumnya)
echo -e "${yellow}==================================${reset}"
echo -e "${blue}         LACAK ALAMAT IP${reset}"
echo -e "${yellow}==================================${reset}"

# Informasi Owner
echo -e "${yellow}==================================${reset}"
echo -e "${cyan}Owner: DayCodexs${reset}"
echo -e "${cyan}Instagram: @ergasxse${reset}"
echo -e "${cyan}[BOT] Telegram: @pioscor_bot${reset}"
echo -e "${yellow}==================================${reset}"

# Menu Pilihan
echo -e "${white}1. Lacak IP Sendiri${reset}"
echo -e "${white}2. Lacak IP Korban${reset}"
echo -e "${white}3. Support Admin${reset}"
echo -e "${yellow}==================================${reset}"
read -p "Pilih menu [1/2/3]: " menu

# Animasi Pemrosesan
echo -e "${yellow}Processing."
sleep 0.5
echo -ne " Ur Data "
sleep 0.5
echo -ne " Still in "
sleep 0.5
echo -ne " Progress "
sleep 0.5
echo -e "${reset}\n"

# Pilihan Menu
if [[ $menu == "1" ]]; then
    curl -s "http://ip-api.com/json" | jq .
elif [[ $menu == "2" ]]; then
    read -p "Masukkan IP: " target_ip
    curl -s "http://ip-api.com/json/$target_ip" | jq .
elif [[ $menu == "3" ]]; then
    termux-open-url "https://freeimage.host/i/3f8HckF"
else
    echo -e "${red}Pilihan tidak valid!${reset}"
fi
