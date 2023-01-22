#!/bin/bash

set -ex

# Install gef & settings
wget -O ~/.gdbinit-gef.py https://raw.githubusercontent.com/hugsy/gef/dev/gef.py
wget -O ~/.gdbinit https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/gdb/.gdbinit_gef
wget -O ~/.gef.rc https://raw.githubusercontent.com/bruce30262/dotfiles/master/.config/gdb/.gef.rc

# Remove line that source angelheap
sed '2d' ~/.gdbinit > ~/.gdbinit

echo "Done."
