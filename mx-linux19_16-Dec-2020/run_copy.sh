#!/bin/bash



#   copy the config file
#   ranger config
cp -r ranger ~/.config/
cp -r poweline ~/.config

#   rename .vim folder just incase something wrong we can go back
mv ~/.vim ~/.vim.old
cp -r .vim ~/

#   rename and copy the ccnfig file
mv ~/.bashrc ~/.bashrc.old
cp .bashrc ~/

mv ~/.vimrc ~/.vimrc.old
cp .vimrc ~/

mv ~/.tmux.conf ~/.tmux.conf.old
cp .tmux.conf ~/



