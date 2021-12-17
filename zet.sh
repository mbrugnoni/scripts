#!/bin/bash

# Script to generate zettelkasten notes
# created by Michael Brugnoni
#
# May need to add some command line arguments at some point, but right now there are none

# Generate note filename
notefile=~/Documents/zetvault/`date +"%Y%m%d%H%M%S"`".md"

# Create the file with generated name
touch $notefile

# Add in the note template text
cat ~/Documents/zetvault/templates/note_template.md >> $notefile

# Start editing the note
vi $notefile
