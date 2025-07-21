#!/bin/bash

echo "Starting Zsh installation and setup..."
sudo apt install -y zsh
sudo chsh -s $(which zsh) $USER

#setup startshp and zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
curl -sS https://starship.rs/install.sh | sh
