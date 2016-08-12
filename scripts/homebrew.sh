#!/bin/bash

# DESCRIPTION
# Installs Homebrew software.

# EXECUTION
# Homebrew
if ! command -v brew > /dev/null; then
  ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
  export PATH="/usr/local/bin:$PATH"
  printf "export PATH=\"/usr/local/bin:$PATH\"\n" >> $HOME/.bash_profile
fi

# Update Homebrew
brew update

# Check if brew is healthy?
brew doctor

# BASH : latest bourne shell
brew install bash

# ZSH : modern bash with plugins
brew install zsh

# FISH : faster alternative to zsh with sane defaults
brew install fish

# Readline : inline text editor for unix
brew install readline

# asciinema : awesome terminal session recorder
brew install asciinema

# ShellCheck : shell script checker
brew install shellcheck

# Colorized Cat : syntax color highligher in teminal
brew install ccat

# tmux : Ternminal multiplexer for better multi-tasking in terminal and ssh.
brew install tmux
brew install reattach-to-user-namespace

# Mosh
brew install mobile-shell

# fasd
brew install fasd
echo 'plugins=(fasd)' >> ~/.zshrc

# Tree
brew install tree

# Git : you know
brew install git

# Mercurial : old git
brew install hg

# CTags
brew install ctags

# Tag
brew install tag

# The Silver Searcher : moderm grep
brew install the_silver_searcher

# Htop
brew install htop

# HTTPie
brew install httpie

# ImageMagick : photoshop for shell
brew install imagemagick

# Graphviz
brew install graphviz

# FLAC
brew install flac

# FFmpeg
brew install ffmpeg

# Gifsicle
brew install gifsicle

# Rust : modern c++
brew install rust

# Go : google's try at modern c++
brew install go

# FZF
brew install fzf

# Peco
brew install peco

# cloc
brew install cloc

# Antlr : Parser generator in Java
brew install antlr

brew install cabal-install

# son of erlang and ruby
brew install elixir

# download manager for terminal
brew install wget

# opencv
brew install opencv
