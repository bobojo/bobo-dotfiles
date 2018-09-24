#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set up Dock icons
# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Adobe Acrobat Reader DC.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Slack.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Discord.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sublime Text.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/VSCodium.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/PhpStorm.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/iTerm.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Adobe Photoshop CS6/Adobe Photoshop CS6.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sequel Pro.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Cyberduck.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/CLIP STUDIO 1.5/App/CLIP STUDIO PAINT.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>${HOME}/Downloads</string><key>_CFURLStringType</key><integer>0</integer></dict><key>showas</key><integer>1</integer></dict></dict>"; killall Dock
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications</string><key>_CFURLStringType</key><integer>0</integer></dict><key>showas</key><integer>0</integer></dict></dict>"; killall Dock
