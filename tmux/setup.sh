#!/bin/bash

set -ex

# Install tpm if tpm does not exists
[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Get .tmux.conf
wget -O ~/.tmux.conf https://raw.githubusercontent.com/bruce30262/dotfiles/master/.tmux.conf

set +x
echo "Done."
echo "In tmux, use <prefix> + I to install tmux plugins."
