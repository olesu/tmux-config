#!/bin/bash

brew list | grep reattach-to-user-namespace > /dev/null 2>&1 || brew install reattach-to-user-namespace
brew list | grep tmux > /dev/null 2>&1 || brew install tmux
