#!/bin/bash

sudo ufw enable

sudo apt purge kwalletmanager qps vim -y
sudo apt autoremove -y

sudo apt update
sudo apt upgrade -y
sudo apt install intel-media-va-driver mesa-va-drivers mesa-utils alsa-base fastfetch zram-config htop picom picom-conf qalculate-qt usb-creator-kde gufw plasma-discover flatpak gamemode -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install org.mozilla.firefox com.github.tchx84.Flatseal com.spotify.Client com.valvesoftware.Steam com.valvesoftware.Steam.Utility.steamtinkerlaunch com.discordapp.Discord org.freedesktop.Platform.VulkanLayer.gamescope/x86_64/24.08 org.freedesktop.Platform.VulkanLayer.MangoHud/x86_64/24.08 -y

#melhora shader - dando erro
echo "export AMD_VULKAN_ICD=RADV MESA_SHADER_CACHE_MAX_SIZE=12G" >> "$HOME/.profile"

mkdir -p ~/.config/fastfetch
fastfetch --gen-config ~/.config/fastfetch/config.jsonc
echo "fastfetch" >> "$HOME/.bashrc"
jq 'logo = {"source": "lubuntu"}' $HOME/.config/fastfetch/config.jsonc > $HOME/.config/fastfetch/temp.jsonc && mv $HOME/.config/fastfetch/temp.jsonc $HOME/.config/fastfetch/config.jsonc

sudo apt update
sudo apt dist-upgrade -y
flatpak update
sudo apt autoclean
sudo apt autoremove

echo "adicionar no arquivo logo antes de modules -> "logo": {"source": "lubuntu"},"

