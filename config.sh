#!/bin/sh


printf"########################## Setting up grub ############################"

sudo cp /etc/default/grub ~/
sudo cp ~/Paradise/grub/grub /etc/default/
sudo cp -r ~/Paradise/grub/theme/paradise /usr/share/grub/themes/

printf"######################### SETTING UP LIGHTDM DM #######################"

sudo cp -r ~/Paradise/paradise /usr/share/lightdm-webkit/themes/
sudo systemctl enable lightdm.service

printf"######################### PLymouth #######################"

sudo cp -r  ~/Paradise/cuts /usr/share/plymouth/themes/
sudo plymouth-set-default-theme -R cuts

printf"######################## BSPWM ###########################"

mkdir -p ~/.config/bspwm/

sudo cp -r ~/Paradise/bspwm ~/.config/bspwm


printf"######################### OTHERS ############ "
sudo cp -r ~/Paradise/dunst ~/.config/dunst 
sudo cp -r ~/Paradise/kitty ~/.config/kitty
sudo cp -r ~/Paradise/nvim ~/.config/nvim
sudo cp -r ~/Paradise/polybar ~/.config/polybar 
sudo cp -r ~/Paradise/rofi ~/.config/rofi
sudo cp -r ~/Paradise/spicetify/Themes ~/.config/spicetify/Themes/
sudo cp -r ~/Paradise/Walls ~/Pictures/
sudo cp -r ~/Paradise/p10k.zsh ~/
sudo cp -r ~/Paradise/.zshrc ~/
sudo cp ~/Paradise/redshift.conf ~/.config/

