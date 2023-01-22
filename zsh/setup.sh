#!/bin/bash

# Detect zsh
# https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
if ! command -v zsh &> /dev/null
then
    echo "zsh could not be found on this machine :("
    exit 1
fi


ZDOTDIR=~/.config/zsh

set -ex

mkdir -p $ZDOTDIR/rcS
mkdir -p $ZDOTDIR/.zim

# Get dotfiles
wget -O ~/.zshenv https://raw.githubusercontent.com/bruce30262/dotfiles/master/.zshenv
wget -O $ZDOTDIR/rcS/.zsh_aliases https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/zsh/rcS/.zsh_aliases
for file in .p10k.zsh .zimrc .zlogin .zshrc termsupport.zsh
do 
    wget -O $ZDOTDIR/$file https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/zsh/$file
done

# Install zimfw
ZIMFW=$ZDOTDIR/.zim/zimfw.zsh
wget -O $ZIMFW https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
chmod +x $ZIMFW
zsh -c "source $ZIMFW install"

set +x
echo "Done. source .zshrc to "

