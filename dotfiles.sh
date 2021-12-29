#!/bin/bash
#
# Script for setting up dotfiles in a new environment
# or refreshing existing ones with updates from Github repo
# by Mike Brugnoni
#

# Variables
dotfiles=( ".bashrc" )

# Clone dotfiles from git repo
git clone https://github.com/mbrugnoni/dotfiles.git ~/dotfiles

# Backup existing dotfiles just incase

