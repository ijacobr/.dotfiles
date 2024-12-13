# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.
## linux.sh
This script checks to see if the OS type is Linux
It creates a .TRASH directory
It changes the name of the .nanorc file
It redirects the contents of etc/nanorc to .nanorc
It adds the source statement to the custom bashrc file at the end of .bashrc
## cleanup.sh
This script is meant to reverse anything done in linux.sh
It removes the .nanorc fil in the home directory
It removes the source statement from the .bashrc file
It removes the .TRASH directory
## Makefile
The makefile runs the linux.sh script with a dependency on the cleanup.sh script
## nanorc
Creates custom configurations in the nano editor such as text color
## bashr_custom
Adds lots of aliases, file management shortcuts, archiving shortcuts, remote connection, and functions
