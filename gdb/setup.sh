#!/bin/bash

set -ex

DBGDIR=~/.config/gdb
mkdir $DBGDIR

# Install gef & settings
wget -O $DBGDIR/.gdbinit-gef.py https://raw.githubusercontent.com/hugsy/gef/dev/gef.py
# Put it in the home directory so I don't need to tweak a lof of original settings
wget -O ~/.gdbinit https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/gdb/.gdbinit_gef
wget -O ~/.gef.rc https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/gdb/.gef.rc

# Remove line that source angelheap
# https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
sed -i.bak '2d' ~/.gdbinit && rm ~/.gdbinit.bak

echo "Done."
