#!/bin/bash

# DESCRIPTION
# Installs OSX applications


# CASK App installation

printf "\nInstalling macOS apps through brew cask\n"
printf "\nmacVim : Vim for mac\n"
cask install macvim

printf "\ngoogle chrome : just in case safari doesn't work\n"
cask install chrome

printf "\nmpv : extensible mplayer\n"
cask install mpv

printf "\nmplayerx : for movies\n"
cask install mplayerx

printf "\nvlc : media player just in case mplayerx doesn't work\n"
cask install vlc

printf "\nigetter : IDM for macOS (download manager)\n"
cask install igetter

printf "\ngoogle drive : directory for exam notes\n"
cask install google-drive

printf "\ndropbox : the other google drive\n"
cask install dropbox

printf "\nsimplenote : cross platform note taking app\n"
cask install simplenote

printf "\npocket : Save articles for reading later\n"
cask install pocket

printf "\ntodoist : todo app\n"
cask install todoist

printf "\nvs code : what atom was supposed to be from Micrsoft (strange)\n"
cask install visual-studio-code

printf "\nsublime text : Fast sleek editor for programming\n"
cask install sublime-text

printf "\natom : Hackable text editor (destined to fail?)\n"
cask install atom

printf "\nskype : Video calling from microsoft\n"
cask install skype

printf "\nwhatsApp : Secure chat app.\n"
cask install whatsapp

printf "\nhacker-menu : For news\n"
cask install hacker-menu

printf "\nfirefox : Standard broser from mozilla\n"
cask install firefox

printf "\nepic : Browser designed for privacy and security\n"
cask install epic

printf "\nmacTex : Tex package for macOS\n"
cask install mactex
