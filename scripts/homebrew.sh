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

#update brew
brew update

#check if brew is fine?
brew doctor

#zsh bash fish
brew install bash zsh fish

# Readline : Unix text editor
brew install readline

# asciinema : awesome terminal session recorder
brew install asciinema

# ShellCheck
brew install shellcheck

# Colorized Cat
brew install ccat

# tmux
brew install tmux
brew install reattach-to-user-namespace

# Mosh
brew install mobile-shell

# fasd
brew install fasd
echo 'plugins=(fasd)' >> ~/.zshrc

# Tree
brew install tree

# Git
brew install git

# Mercurial
brew install hg

# CTags
brew install ctags

# Tag
brew install tag

# The Silver Searcher
brew install the_silver_searcher

# Htop
brew install htop

# HTTPie
brew install httpie

# ImageMagick
brew install imagemagick

# Graphviz
brew install graphviz

# FLAC
brew install flac

# FFmpeg
brew install ffmpeg

# Gifsicle
brew install gifsicle

# Rust
brew install rust

# Go
brew install go

# FZF
brew install fzf

# Peco
brew install peco

# cloc
brew install cloc

brew install antlr cabal-install elixir wget opencv
