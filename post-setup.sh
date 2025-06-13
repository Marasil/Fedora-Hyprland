#!/bin/bash
#!/bin/bash

echo "🔧 Kopiuję konfiguracje..."

# Katalog użytkownika
USER_HOME="/home/$USER"

# 1. Konfiguracje
mkdir -p $USER_HOME/.config
cp -r ./configs/hypr $USER_HOME/.config/
cp -r ./configs/waybar $USER_HOME/.config/
cp -r ./configs/rofi $USER_HOME/.config/

# 2. Catppuccin Wlogout
echo "🎨 Instaluję Catppuccin wlogout..."
mkdir -p $USER_HOME/.config/wlogout
cp -r ./configs/wlogout/* $USER_HOME/.config/wlogout/

# 3. Rofi menu do zmiany stylu
cp ./scripts/rofi-theme-switcher.sh /usr/local/bin/rofi-theme-switcher
chmod +x /usr/local/bin/rofi-theme-switcher

echo "✅ Konfiguracje skopiowane!"

