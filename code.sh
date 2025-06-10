#!/bin/bash

sudo ufw enable

sudo apt purge kwalletmanager qps vim -y
sudo apt autoremove -y

sudo apt update
sudo apt upgrade -y
sudo apt install intel-media-va-driver mesa-va-drivers mesa-utils alsa-base fastfetch zram-config htop picom picom-conf qalculate-qt usb-creator-kde gufw plasma-discover flatpak gamemode -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install org.mozilla.firefox com.github.tchx84.Flatseal com.spotify.Client com.valvesoftware.Steam com.valvesoftware.Steam.Utility.steamtinkerlaunch com.discordapp.Discord org.freedesktop.Platform.VulkanLayer.gamescope org.freedesktop.Platform.VulkanLayer.MangoHud -y

#melhora shader - dando erro
echo "export AMD_VULKAN_ICD=RADV MESA_SHADER_CACHE_MAX_SIZE=12G" >> "$HOME/.profile"

sudo apt update
sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove

echo "verificar o comando fastfetch, se nao aparecer o lubuntu tem que criar o arquivo de config com 
mkdir -p ~/.config/fastfetch
fastfetch --gen-config ~/.config/fastfetch/config.jsonc
adicionar no arquivo logo antes de modules -> "logo": {"source": "lubuntu"},
para usar sempre que abrir um terminal -> echo "fastfetch" >> "$HOME/.bashrc" - adicionar fastfetch no final" #mesmo erro do shader
