#!/bin/bash

brew list | grep reattach-to-user-namespace > /dev/null 2>&1 || brew install reattach-to-user-namespace
brew list | grep tmux > /dev/null 2>&1 || brew install tmux

rm -f ~/.tmux.conf
ln -s ~/.config/tmux-config/tmux.conf ~/.tmux.conf
