#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Zsh and Oh-My-Zsh
# brew install zsh
# brew install zsh-completions
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# # We installed the new shell, now we have to activate it
# echo "Adding the newly installed shell to the list of allowed shells"
# # Prompts for password
# sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
# # Change to the new shell, prompts for password
# chsh -s /usr/local/bin/zsh

# Install `wget`
brew install wget

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi

# Install Cask
brew cask

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-extras
brew install node
brew install gnupg
brew install mas # Mac App Store cli
# Install LastPass and Bitdefender using MAS
mas lucky LastPass
mas lucky Bitdefender

# Core casks
brew cask install alfred
brew cask install iterm2
start_if_needed() {
  local grep_name="[${1:0:1}]${1:1}"

  if [[ -z $(ps aux | grep -e "${grep_name}") ]]; then
    if [ -e ~/Applications/$1.app ]; then
      open ~/Applications/$1.app
    else
      if [ -e /Applications/$1.app ]; then
        open /Applications/$1.app
      fi
    fi
  fi

  true
}
# Install the Monokai theme for iTerm
start_if_needed iTerm
open "./extras/Monokai.itermcolors"
# Set location for custom preferences file to Dropbox
DROPBOX="${HOME}/Dropbox (enterVOID Production)/Personal/Passwords, Keys, etc."
defaults write com.googlecode.iterm2 PrefsCustomFolder -string $DROPBOX

# Development tool casks
brew cask install sublime-text
brew cask install cyberduck
brew cask install postman
osascript -e 'quit app "Sublime Text"'
# Setup Sublime Text 3 settings sync
SUBLIME="${HOME}/Library/Application Support/Sublime Text 3/Packages"
rm -rf "${SUBLIME}/User"
ln -sfv "${DROPBOX}/User" "${SUBLIME}/User"

# Misc casks
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install firefox
brew cask install slack
brew cask install dropbox
# Open Dropbox
open -a Dropbox
brew cask install bettertouchtool
brew cask install flux
brew cask install hyperswitch
brew cask install the-unarchiver
brew cask install disk-inventory-x
brew cask install discord
brew cask install slack
brew cask install vscodium
brew cask install clip-studio-paint
# Runs installer:
brew cask install adobe-acrobat-reader

brew tap caskroom/drivers
brew cask install apple-brotherprinterdrivers

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup
