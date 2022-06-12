#!/bin/bash

# Using manjaro i3 minimal

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm manjaro-keyring
sudo pacman -Suu --noconfirm

sudo pacman -S --noconfirm git zsh yay base-devel alacritty flameshot nnn go micro stow

yay -S --noconfirm google-chrome
yay -S --noconfirm visual-studio-code-bin
yay -S --noconfirm spotify
yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k
yay -S --noconfirm jetbrains-toolbox

git config --global user.name orlobpaul@gmail.com
git config --global user.email Paul Orlob
git config --global core.editor micro

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
