#!/bin/bash

echo "Starting Zsh installation and setup..."
sudo apt install zsh
sudo chsh -s $(which zsh) $USER
