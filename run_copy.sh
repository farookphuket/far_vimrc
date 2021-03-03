#!/bin/bash 


# this will copy the config file 

echo "copy vim config"

if [[ -d ~/.vim ]] && [[ -n `ls -A ~/.vim` ]]; then
    # found the .vim make the backup 
    mv ~/.vim ~/.vim.old

    # copy this config
    cp -r COPY_FOR_VIM/.vim ~/ 
fi 
cp -r COPY_FOR_VIM/.vim ~/ 

cp COPY_FOR_VIM/.vimrc ~/
cp COPY_FOR_VIM/.bashrc ~/
cp COPY_FOR_VIM/.tmux.conf ~/


cp -r ranger ~/.config 
cp -r powerline ~/.config 

cp -r nvim ~/.config/ 
echo "this will install the require package"
sleep 5s
sudo ./run_install.sh
