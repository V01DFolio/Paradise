#!/bin/sh

printf "##########################################################################################
######################### Installing YAY  ###############################################
##########################################################################################"

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

printf "##########################################################################################
######################### Installing Programs  ###############################################
##########################################################################################"

yay -S lightdm lightdm-webkit2-greeter bspwm sxhkd kitty xorg-xinput ntfs-3g zsh pulseaudio pavucontrol font-manager feh pfetch rofi polybar dunst redshift lxappearance os-prober nemo stacer polkit-gnome gvfs firefox spotify playerctl pamixer xarchiver unzip plymouth nodejs npm grub-customizer xclip


printf "##########################################################################################
######################### Installing picom  ###############################################
##########################################################################################"

git clone https://aur.archlinux.org/picom-ftlabs-git.git && cd picom-ftlabs-git && makepkg -si

printf "##########################################################################################
######################### Fonts  ###############################################
##########################################################################################"

yay -S ttf-icomoon-feather ttf-iosevka ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-font-awesome

printf "##########################################################################################
######################### Installing spiectify  ###############################################
##########################################################################################"

curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | &&

printf "##########################################################################################
######################### install oh my zsh  ###############################################
##########################################################################################"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
