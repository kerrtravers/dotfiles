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

# Install snap packages
echo "Installing Snap packages"
sudo snap install chromium
sudo snap install slack --classic
sudo snap install vscode
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install spotify
sudo snap install mailspring

# Create Sites directory
echo "Creating a Sites directory"
mkdir $HOME/Sites

# Complete
echo "Setup Complete"
