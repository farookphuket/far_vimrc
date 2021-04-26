#!/bin/bash




apt install vim-gtk3 neovim zsh fzf fonts-powerline powerline-gitstatus -yy 

apt install powerline tmux nodejs npm vim-syntastic zsh-antigen  -yy

apt install fonts-font-awesome ranger -yy

apt install zsh-autosuggestions zsh-syntax-highlighting -yy 


apt install zsh-theme-powerlevel9k -yy




# copy the themem

cp -r ../zsh/zsh /usr/share/
cp -r ../zsh/zsh-theme-powerlevel10k /usr/share/
