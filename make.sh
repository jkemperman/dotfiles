#!/bin/bash
#
# make.sh
# This script backs up any old dotfiles listed in $files, then creates
# symlinks to new dotfiles.
# This script is inspired by Michael Smalley.

# Declare variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc vim Xresources zshrc i3 vimperatorrc bin conkyrc zprofile gitconfig gitignore_global"

# Create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dir directory..."
cd $dir
echo "...done"

# Backup existing dotfiles, then create symlinks
for file in $files; do
    # Check if there's an existing dotfile
    if [ -e ~/.$file ]
    then
        # Backup existing dotfile
        echo "Backing up $file from ~ to $olddir"
        mv ~/.$file $olddir
    fi
    # Create symlink to dotfile
    echo "Creating symlink to $file in ~"
    ln -s $dir/$file ~/.$file
done

if [[ $config == *"zshrc"* ]]
then
    mkdir $dir/zsh
    exec git clone https://github.com/olivierverdier/zsh-git-prompt $dir/zsh/git-prompt
fi

echo "...done"
