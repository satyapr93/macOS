#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  echo "Installing Homebrew.........."
  prinf "\n"
  ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
  if type brew >/dev/null 2>&1; then
    echo "---------Homebrew installed---------"
    printf "\n\n"
  else
    echo "Error in Homebrew installation"
    exit 1
  fi

  if echo $PATH | grep -q "/usr/local/bin"; then
    export PATH="/usr/local/bin:$PATH"
  fi
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.zsh_profile
fi

if type brew >/dev/null 2>&1; then
  echo "Bro is here."
else
  echo "Homebrew not installed"
  exit 1
fi

# Update Homebrew
echo "Updating brew database"
brew update

# Check if brew is healthy?
if brew doctor | grep -q 'ready to brew' &> /dev/null; then
    echo "Continuing with installation of brew apps"
else
    read -n1 -p "Bro is not healthy, continue anyways ? [y,n]" response
    print "\n\n"
    case $response in
      y|Y) echo "Continuing with installation of brew apps";;
      n|N) exit 1;;
      *) exit 1;;
    esac
fi

echo "Installing brew apps"
echo "BASH : latest bourne shell"
brew install bash

echo "ZSH : modern bash with plugins"
brew install zsh

echo "FISH : faster alternative to zsh with sane defaults"
brew install fish

echo "Readline : inline text editor for unix"
brew install readline

echo "asciinema : awesome terminal session recorder"
brew install asciinema

echo "ShellCheck : shell script checker"
brew install shellcheck

echo "Colorized Cat : syntax color highligher in teminal"
brew install ccat

echo "tmux : Ternminal multiplexer for better multi-tasking in terminal and ssh."
brew install tmux
brew install reattach-to-user-namespace

echo "Mosh"
brew install mobile-shell

echo "fasd"
brew install fasd
#echo 'plugins=(fasd)' >> ~/.zshrc

echo "Tree"
brew install tree

echo "Git : you should know"
brew install git

echo "Mercurial : old git"
brew install hg

echo "CTags"
brew install ctags

echo "Tag"
brew install tag

echo "The Silver Searcher : moderm grep"
brew install the_silver_searcher

echo "Htop"
brew install htop

echo "HTTPie"
brew install httpie

echo "ImageMagick : photoshop for shell"
brew install imagemagick

echo "Graphviz"
brew install graphviz

echo "FLAC"
brew install flac

echo "FFmpeg"
brew install ffmpeg

echo "Gifsicle"
brew install gifsicle

echo "FZF"
brew install fzf

echo "Peco"
brew install peco

echo "cloc"
brew install cloc

echo "Antlr : Parser generator in Java"
brew install antlr

echo "cabal : haskell package manager"
brew install cabal-install

echo "download manager for terminal"
brew install wget

echo "opencv"
brew install opencv
