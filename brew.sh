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
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Zsh and Oh-My-Zsh
brew install zsh
brew install zsh-completions
rm -f ~/.zcompdump; compinit
chmod go-w /usr/local/share
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install Python
brew install python
brew install python3

# Install ruby-build and rbenv
brew install ruby-build
brew install rbenv
LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install homebrew/x11/xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install hub
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install pkg-config libffi
brew install pandoc

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Core casks
# brew cask install --appdir="/Applications" alfred
brew cask install --appdir="~/Applications" iterm2
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
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${HOME}/Dropbox/Personal/Passwords, Keys, etc."

brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" xquartz

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
# brew cask install --appdir="/Applications" atom
# brew cask install --appdir="/Applications" virtualbox
# brew cask install --appdir="/Applications" vagrant
# brew cask install --appdir="/Applications" vagrant-manager
# brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" phpstorm
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" postman
# Setup Sublime Text 3 settings sync
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Personal/Passwords,\ Keys,\ etc./User

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" dropbox
# brew cask install --appdir="/Applications" evernote
# brew cask install --appdir="/Applications" 1password
#brew cask install --appdir="/Applications" gimp
#brew cask install --appdir="/Applications" inkscape
brew update && brew cask uninstall --force adobe-reader && brew cask install --appdir="/Applications" adobe-reader
brew cask install --appdir="/Applications" lastpass
# Alternative to above with Alfred Power Pack subscription (see https://github.com/stuartcryan/lastpass-alfred-workflow)
# brew install lastpass-cli --with-pinentry --with-doc
# sudo cpan install Capture::Tiny
# git clone git@github.com:stuartcryan/lastpass-alfred-workflow.git
# open lastpass-alfred-workflow/lastpass-cli-alfred-workflow.alfredworkflow
brew cask install --appdir="/Applications" bettertouchtool
brew cask install --appdir="/Applications" flux
# brew cask install --appdir="/Applications" slate
brew cask install --appdir="/Applications" hyperswitch
# brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" microsoft-office
brew cask install --appdir="/Applications" disk-inventory-x
# brew cask install --appdir="/Applications" joinme

#Remove comment to install LaTeX distribution MacTeX
brew cask install --appdir="/Applications" mactex

brew tap caskroom/drivers
brew cask install brotherprinterdrivers

# Install Docker, which requires virtualbox
# brew install docker
# brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Install Wine to run Windows programs
# brew install wine

# Install personal-use applications
brew cask install --appdir="/Applications" crashplan
brew cask install --appdir="/Applications" resilio-sync
brew cask install --appdir="/Applications" macid
brew cask install --appdir="/Applications" rescuetime
brew cask install --appdir="/Applications" fuzzyclock
brew cask install --appdir="/Applications" keycastr

# Remove outdated versions from the cellar.
brew cleanup