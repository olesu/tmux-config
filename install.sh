#!/bin/bash

brew list | grep reattach-to-user-namespace > /dev/null 2>&1 || brew install reattach-to-user-namespace
brew list | grep tmux > /dev/null 2>&1 || brew install tmux

wd="$PWD"
if [ -f "$wd/tmux.conf" ]; then
	rm -f ~/.tmux.conf
	ln -s "$wd/tmux.conf" ~/.tmux.conf
else
	echo "$0: No tmux.conf in $wd. Not installing symlink in home directory." >&2
fi

