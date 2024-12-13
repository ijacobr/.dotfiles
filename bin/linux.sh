#!/bin/bash

# Checks to see if the OS type is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: Linux not found." >> linuxsetup.log
    exit 1
fi

# Creates the .TRASH directory if it doesn't exist
if [ ! -d "$HOME/.TRASH" ]; then
    mkdir "$HOME/.TRASH"
fi

# Changes the name of the .nanorc file
if [ -f "$HOME/.nanorc" ]; then
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
    echo "The .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
fi

# Redirect the contents of etc/nanorc to .nanorc in the home directory
cat etc/nanorc > "$HOME/.nanorc"

# Add the statement to the custom bashrc file at the end of .bashrc
if ! grep -q "source ~/.dotfiles/etc/bashrc custom" "$HOME/.bashrc"; then
    echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
fi
