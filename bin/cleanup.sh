#!/bin/bash

# Remove the .nanorc file in the home directory
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from the .bashrc file
if [ -f "$HOME/.bashrc" ]; then
    sed -i '/source ~\/\.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"
fi

# Remove the .TRASH directory in the home directory
if [ -d "$HOME/.TRASH" ]; then
    rm -r "$HOME/.TRASH"
fi
