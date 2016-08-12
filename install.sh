#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./install.sh OPTION

# SETTINGS
source settings/settings.sh

# EXECUTION
./scripts/homebrew.sh
./scripts/basics.sh
./scripts/system_preferences.sh
./scripts/setup.sh
./scripts/application.sh

#while true; do
  #if [[ $# == 0 ]]; then
    #printf "\nUsage: run OPTION\n"
    #printf "\nOSX Options:\n"
    #printf "  Setup:\n"
    #printf "    b:  Apply basic system settings.\n"
    #printf "    h:  Install Homebrew software.\n"
    #printf "    a:  Install application software.\n"
    #printf "    x:  Install application extensions.\n"
    #printf "    d:  Apply software defaults.\n"
    #printf "    s:  Setup and configure installed software.\n"
    #printf "    i:  Install everything (i.e. executes all options, listed above, top to bottom).\n"
    #printf "  Manage:\n"
    #printf "    c:  Check status of managed software.\n"
    #printf "    C:  Caffeinate machine.\n"
    #printf "    ua: Uninstall application software.\n"
    #printf "    ux: Uninstall application extension.\n"
    #printf "    ra: Reinstall application software.\n"
    #printf "    rx: Reinstall application extension.\n"
    #printf "    w:  Clean work (temp) directory.\n"
    #printf "    q:  Quit/Exit.\n\n"
    #read -p "Enter selection: " response
    #printf "\n"
    #process_option $response
  #else
    #process_option $1
  #fi
#done
