#!/bin/bash

echo "Install Neovim with LazyVim? [y/n]"
read -r ANS
yes="y"

if [ "${ANS,,}" = "$yes" ]; then
	echo "Adding Neovim repository..."
	sudo add-apt-repository ppa:neovim-ppa/unstable

	echo "Updating apt and installing Neovim..."
	sudo apt-get update
	sudo apt-get install neovim

	sudo apt-get install python-dev python-pip python3-dev python3-pip

	echo "Installing git..."
	sudo apt-get install git

	echo "Installing LazyVim..."
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	rm -rf ~/.config/nvim/.git

	echo "Neovim has been installed with LazyVim!"
else
	echo "Ok..."
fi
