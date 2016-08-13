#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./install.sh

# EXECUTION

printf "\n1> Basic settings...."
./scripts/basics.sh

printf "\n2> Changing default setting preferences...."
./scripts/system_preferences.sh

printf "\n3> Installing Hombrew and brew apps...."
./scripts/homebrew.sh

printf "\n4> Settings up shell, git and other dotfiles...."
./scripts/setup.sh

printf "\n5> Installing macOS apps...."
./scripts/application.sh
