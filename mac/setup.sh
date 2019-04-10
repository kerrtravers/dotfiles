# Display message 'Setting up your Mac...'

echo "Setting up your Mac..."

# Ask for the administrator password upfront
sudo -v

# Homebrew - Installation

echo "Installing Homebrew"

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install Homebrew Packages

cd ~
echo "Installing Homebrew packages"

homebrew_packages=(
  "git"
  "node"
  "tree"
  "wget"
  "wifi-password"
)

for homebrew_package in "${homebrew_packages[@]}"; do
  brew install "$homebrew_package"
done

# Install Casks
echo "Installing Homebrew cask packages"
brew tap caskroom/fonts

homebrew_cask_packages=(
  "authy"
  "discord"
  "google-chrome"
  "iterm2"
  "slack"
  "spotify"
  "visual-studio-code"
  "whatsapp"
)

for homebrew_cask_package in "${homebrew_cask_packages[@]}"; do
  brew cask install "$homebrew_cask_package"
done

# Install Quick Look Plugins
echo "Installing Quick Look Plugins"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
echo "Closing any open System Preferences panes, to prevent them from overriding settings we’re about to change"
osascript -e 'tell application "System Preferences" to quit'

# Stop iTunes from responding to the keyboard media keys
echo "Stopping iTunes from responding to the keyboard media keys"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Disable the “Are you sure you want to open this application?” dialog
echo "Disabling the Are you sure you want to open this application? dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Tell macos to always show all files in finder
echo "Telling macos to always show all files in finder"
defaults write com.apple.finder AppleShowAllFiles YES

# Complete
echo "Setup Complete"
