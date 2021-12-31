#!/bin/bash
#
# Script for setting up dotfiles in a new environment
# or refreshing existing ones with updates from Github repo
# by Mike Brugnoni
#

# Variables
dotfiles=( ".bashrc" ".profile" ".tmux.conf" )

# Clone dotfiles from git repo
git clone https://github.com/mbrugnoni/dotfiles.git ~/dotfiles

# Backup current dotfiles and copy new ones in from git repo
for $i in "${dotfiles[@]}"
do
	cp ~/$i ~/bkp
	cp ~/dotfiles/$i ~
done

