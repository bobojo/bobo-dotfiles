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

# Back-end
brew install php@7.1
pecl install channel://pecl.php.net/mcrypt-1.0.0
brew install httpd
brew install mariadb
brew install composer
brew install dnsmasq
echo 'address=/.test/127.0.0.1' > /usr/local/etc/dnsmasq.conf
sudo mkdir /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/test'

# Remove outdated versions from the cellar.
brew cleanup

# Node tools
npm install -g gulp

# Platform.sh setup
curl -sS https://platform.sh/cli/installer | php
# Get Drush
composer global require consolidation/cgr
cgr drush/drush:^8.1.1
DROPBOX="${HOME}/Dropbox (enterVOID Production)"
PLATFORM="${DROPBOX}/Work/Platform.sh"
ln -sfv "${PLATFORM}/httpd" /usr/local/etc/httpd
ln -sfv "${PLATFORM}/php.ini" /usr/local/etc/php/7.1/php.ini
