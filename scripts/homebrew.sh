#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  printf "\nInstalling Homebrew..........\n"
  printf "\n"
  ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
  if type brew >/dev/null 2>&1; then
    printf "\n---------Homebrew installed---------\n"
    printf "\n\n"
  else
    printf "\nError in Homebrew installation\n"
    exit 1
  fi

  if ! echo $PATH | grep -q "/usr/local/bin"; then
    printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.zshrc
  fi
fi

if type brew >/dev/null 2>&1; then
  printf "\nBro is here.\n"
else
  printf "\nHomebrew not installed\n"
  exit 1
fi

# Update Homebrew
printf "\nUpdating brew database\n"
brew update

# Check if brew is healthy?
if brew doctor | grep -q 'ready to brew' &> /dev/null; then
    printf "\nContinuing with installation of brew apps\n"
else
    read -n1 -p "Bro is not healthy, continue anyways ? [y,n]" response
    print "\n\n\n"
    case $response in
      y|Y) printf "\nContinuing with installation of brew apps";;
      n|N) exit 1;;
      *) exit 1;;
    esac
fi

printf "\nInstalling brew apps\n"
printf "\nBASH : latest bourne shell\n"
brew install bash

printf "\nZSH : modern bash with plugins\n"
brew install zsh

printf "\nFISH : faster alternative to zsh with sane defaults\n"
brew install fish

printf "\nReadline : inline text editor for unix\n"
brew install readline

printf "\nasciinema : awesome terminal session recorder\n"
brew install asciinema

printf "\nShellCheck : shell script checker\n"
brew install shellcheck

printf "\nColorized Cat : syntax color highligher in teminal\n"
brew install ccat

printf "\ntmux : Ternminal multiplexer for better multi-tasking in terminal and ssh.\n"
brew install tmux
brew install reattach-to-user-namespace

printf "\nMosh\n"
brew install mobile-shell

printf "\nfasd\n"
brew install fasd
#echo 'plugins=(fasd)' >> ~/.zshrc

printf "\nTree\n"
brew install tree

printf "\nGit : you should know\n"
brew install git

printf "\nMercurial : old git\n"
brew install hg

printf "\nCTags\n"
brew install ctags

printf "\nTag\n"
brew install tag

printf "\nThe Silver Searcher : moderm grep\n"
brew install the_silver_searcher

printf "\nHtop\n"
brew install htop

printf "\nHTTPie\n"
brew install httpie

printf "\nImageMagick : photoshop for shell\n"
brew install imagemagick

printf "\nGraphviz\n"
brew install graphviz

printf "\nFLAC\n"
brew install flac

printf "\nFFmpeg\n"
brew install ffmpeg

printf "\nGifsicle\n"
brew install gifsicle

printf "\nFZF\n"
brew install fzf

printf "\nPeco\n"
brew install peco

printf "\ncloc\n"
brew install cloc

printf "\nAntlr : Parser generator in Java\n"
brew install antlr

printf "\ncabal : haskell package manager\n"
brew install cabal-install

printf "\ndownload manager for terminal\n"
brew install wget

printf "\nopencv\n"
brew install opencv
