#!/bin/bash

# Display message 'Setting up your new linux machine...'
echo "Setting up your new linux machine..."

# Ask for the administrator password upfront
sudo -v

# Update package manager
echo "Updating package manager"
sudo apt-get update

# Install packages
echo "Installing packages"
sudo apt install git
sudo apt install nodejs
sudo apt install npm
sudo apt install snapd
sudo apt install ubuntu-restricted-extras
sudo apt install libavcodec-extra
sudo apt install libdvd-pkg
sudo apt install wine-stable
sudo apt install gdebi
sudo apt install software-properties-common
sudo apt-get install chromium-browser
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

# Install snap packages
echo "Installing Snap packages"
sudo snap install slack --classic
sudo snap install vscode
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install mailspring
sudo snap install snap-store

# Create Sites directory
echo "Creating a Sites directory"
mkdir $HOME/Sites

# Cleanup apt-get cache
echo "Cleaning apt-get cache"
sudo apt-get clean

# Complete
echo "Setup Complete"
