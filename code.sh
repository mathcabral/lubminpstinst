#!/bin/bash

sudo ufw enable

sudo apt purge -s kwalletmanager qps vim
sudo apt autoremove -s

sudo apt update
sudo apt upgrade
sudo apt install intel-media-va-driver mesa-va-drivers mesa-utils alsa-base fastfetch htop picom picom-conf qalculate-qt usb-creator-kde lubuntu-restricted-extras gufw plasma-discover flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y org.mozilla.firefox
flatpak install com.spotify.Client
flatpak install -y com.valvesoftware.Steam

#melhora shader
echo "export AMD_VULKAN_ICD=RADV MESA_SHADER_CACHE_MAX_SIZE=12G" >> "$home/.profile"

sudo apt update
sudo apt dist-upgrade -s
flatpak update
sudo apt autoclean
sudo apt autoremove -s

echo "verificar o comando fastfetch, se nao aparecer o lubuntu tem que criar o arquivo de config com 
mkdir -p ~/.config/fastfetch
fastfetch --gen-config ~/.config/fastfetch/config.jsonc
adicionar no arquivo logo antes de modules -> "logo": {"source": "lubuntu"},
para usar sempre que abrir um terminal -> echo "fastfetch" >> "$home/.bashrc" - adicionar fastfetch no final"
