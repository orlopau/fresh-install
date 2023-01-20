#!/bin/bash

apps_manjaro()
{
	# Using manjaro i3 minimal

	sudo pacman -Syu --noconfirm
	sudo pacman -S --noconfirm manjaro-keyring
	sudo pacman -Suu --noconfirm

	sudo pacman -S --noconfirm git zsh yay base-devel alacritty flameshot nnn go micro stow glances keychain feh

	yay -S --noconfirm google-chrome
	yay -S --noconfirm visual-studio-code-bin
	yay -S --noconfirm spotify
	yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k
	yay -S --noconfirm jetbrains-toolbox	
}

apps_ubuntu()
{
	echo "No apps for ubuntu yet."
}

echo "Installing packages..."
echo "Enter [m] for manjaro, [u] for ubuntu."
read input
if [ "$input" == "m" ]; then
	apps_manjaro
elif [ "$input" == "u" ]; then
	apps_ubuntu
else
	echo "invalid input"
	exit 1
fi

echo "Setting up git..."
echo "Enter E-Mail:"
read git_mail
echo "Enter name:"
read git_name
echo "E-Mail: $git_mail , Name: $git_name"
read -p "Press any key to continue..."

git config --global user.name $git_mail
git config --global user.email $git_name
git config --global core.editor micro
git config --global pull.ff only

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
