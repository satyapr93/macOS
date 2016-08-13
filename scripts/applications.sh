#!/bin/bash

# DESCRIPTION
# Installs OSX applications


# CASK App installation

echo "Installing macOS apps through brew cask"
echo "MacVim : Vim for mac"
cask install macvim

echo "Google Chrome : just in case safari doesn't work"
cask install chrome

echo "mpv : extensible mplayer"
cask install mpv

echo "mplayerx : for movies"
cask install mplayerx

echo "vlc : media player just in case mplayerx doesn't work"
cask install vlc

echo "igetter : IDM for macOS (download manager)"
cask install igetter

echo "google drive : directory for exam notes"
cask install google-drive

echo "dropbox : the other google drive"
cask install dropbox

echo "simplenote : cross platform note taking app"
cask install simplenote

echo "pocket : Save articles for reading later"
cask install pocket

echo "Todoist : todo app"
cask install todoist

echo "VS Code : what atom was supposed to be from Micrsoft (strange)"
cask install visual-studio-code

echo "Sublime Text : Fast sleek editor for programming"
cask install sublime-text

echo "Atom : Hackable text editor (destined to fail?)"
cask install atom

echo "Skype : Video calling from microsoft"
cask install skype

echo "WhatsApp : Secure chat app."
cask install whatsapp

echo "Hacker-menu : For news"
cask install hacker-menu

echo "Firefox : Standard broser from mozilla"
cask install firefox

echo "Epic : Browser designed for privacy and security"
cask install epic

echo "macTex : Tex package for macOS"
cask install mactex
