#!/bin/bash
# Author: Marcin Kujawski
# Version: 1.0
# Description: Lab1 script to backup folder /usr/bin
# Changelog: 
# - 18.12.2023 - initial version 

# Creation of backup folder
echo "Tworzenie katalogu backup"
mkdir ~/backup 2> copy.err

# Copying files from /usr/bin to backup folder
echo "Kopiowanie plików"
cp -rp /usr/bin/* ~/backup > copy.log 2>&1


