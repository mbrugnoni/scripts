#!/bin/bash
#
# Script for setting up dotfiles in a new environment
# or refreshing existing ones with updates from Github repo
# by Mike Brugnoni
#

# Variables
dotfiles=( ".bashrc" ".profile" ".tmux.conf" )

# Clone dotfiles from git repo
echo "Prompting for GitHub ssh key passphrase...\n"
if [[ ! -d ~/dotfiles ]]
then
  git clone https://github.com/mbrugnoni/dotfiles.git ~/dotfiles
 else
  git -C ~/dotfiles pull 
fi

# Backup current dotfiles and copy new ones in from git repo
for i in "${dotfiles[@]}"
do
	cp ~/$i ~/bkp
	cp ~/dotfiles/$i ~
done

