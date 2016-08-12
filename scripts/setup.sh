#!/bin/bash

# DESCRIPTION
# Sets up and launches (if necessary) installed software.

private.sh

# Bash
#sudo bash -c "printf '/usr/local/bin/bash\n' >> /etc/shells"
#sudo zsh -c "printf '/usr/local/bin/zsh\n' >> /etc/shells"
#sudo fish -c "printf '/usr/local/bin/fish\n' >> /etc/shells"

# switching to zsh
#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
#chsh -s /usr/local/bin/zsh

# Ruby
#printf "%s\n" "---" > "$HOME/.gemrc"
#printf "%s\n" "gem: --no-document" >> "$HOME/.gemrc"
#printf "%s\n" "$MRI" > "$HOME/.ruby-version"
#git clone git://github.com/bkuhlmann/ruby_setup.git
#(
  #cd ruby_setup
  #git checkout $REPO_RUBY_SETUP
  #/usr/local/bin/ruby-install "ruby-$MRI"
  #./run.sh i
#)
#rm -rf ruby_setup

# Go
#install_git_project "git://github.com/bkuhlmann/go_setup.git" $REPO_GO_SETUP "go_setup" "./run.sh i"

# NPM
#install_git_project "git://github.com/bkuhlmann/npm_setup.git" $REPO_NPM_SETUP "npm_setup" "./run.sh i"

# Pow
#curl get.pow.cx | sh

# Sublime Text Setup
#if [ ! -e "/usr/bin/sublime" ]; then
  #sudo ln -sv "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
#fi
#install_git_project "git://github.com/bkuhlmann/sublime_text_setup.git" $REPO_SUBLIME_TEXT_SETUP "sublime_text_setup" "./run.sh i"

# Dotfiles
#rm -f $HOME/.bash_profile
#install_git_project "git://github.com/bkuhlmann/dotfiles.git" $REPO_DOTFILES "dotfiles" "./run.sh i"
#source $HOME/.bashrc





# Git Setup
#ssh-keygen -t rsa -C "satyapr93@gmail.com"

#copy ssh key to clipboard for adding to github.com
#pbcopy < ~/.ssh/id_rsa.pub

#test connection
#ssh -T git@github.com

#set git config values
git config --global user.name $USER_FULL_NAME && \
git config --global user.email $USER_EMAIL_ID && \
git config --global github.user $GIT_USER_ID && \
git config --global core.editor $VISUAL && \
git config --global color.ui true && \
git config --global push.default simple

#token
git config --global github.token your_token_here $GIT_TOKEN
