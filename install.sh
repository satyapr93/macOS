#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./install.sh

# EXECUTION

printf "\n1> Basic settings...."
sh ./scripts/basics.sh

printf "\n2> Changing default setting preferences...."
sh ./scripts/system_preferences.sh

printf "\n3> Installing Hombrew and brew apps...."
sh ./scripts/homebrew.sh

printf "\n4> Settings up shell, git and other dotfiles...."
sh ./scripts/setup.sh

printf "\n5> Installing macOS apps...."
sh ./scripts/applications.sh
