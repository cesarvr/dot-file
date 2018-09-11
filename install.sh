#!/bin/bash

cp .zshrc ~/

#initial packages
sudo dnf install -y util-linux-user zsh sqlite gconf-editor clang cmake wget 

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


