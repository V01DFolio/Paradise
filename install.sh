#!/bin/sh

printf "##########################################################################################
######################### Installing YAY  ###############################################
##########################################################################################"

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

printf "##########################################################################################
######################### Installing Programs  ###############################################
##########################################################################################"

yay -S lightdm lightdm-webkit2-greeter ly bspwm sxhkd kitty xorg-xinput ntfs-3g zsh pulseaudio pavucontrol font-manager feh pfetch rofi polybar eww dunst redshift lxappearance os-prober nemo stacer polkit-gnome gvfs htop firefox spotify playerctl pamixer xarchiver unzip plymouth nodejs npm grub-customizer

printf "##########################################################################################
######################### Installing nvChad for nvim  ###############################################
##########################################################################################"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

printf "##########################################################################################
######################### Installing picom  ###############################################
##########################################################################################"

git clone https://aur.archlinux.org/picom-ftlabs-git.git && cd picom-ftlabs-git && makepkg -si

printf "##########################################################################################
######################### Fonts  ###############################################
##########################################################################################"

yay -S ttf-icomoon-feather ttf-iosevka ttf-jetbrains-mono ttf-nerd-fonts-symbols

printf "##########################################################################################
######################### Installing spiectify  ###############################################
##########################################################################################"

curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | &&

printf "#######################################################################
################# Configuring system  ####################################
##########################################################################"

mkdir -p .config/bspwm/

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
