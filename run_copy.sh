#!/bin/bash 



# this will copy the config file 
echo "----------------------Warning!-----------------"
echo "this will copy the config of vim  to $HOME "
echo " will copy nvim config into $HOME/.config "
echo " last update 6 Mar 2021 "
echo "-----------------------------------"


mkdir -p ~/Documents/vim_backup  

TODAY=$(date +"%Y-%M-%d_at_%H:%M:%S")
USER_NAME=$USER
BACKUP_PATH=~/Documents/vim_backup 


if [[ -d ~/.vim ]] && [[ -n `ls -A ~/.vim` ]]; then 

    # copy .vim dir to the backup path eg: ~/Desktop/user-name
    mv ~/.vim $BACKUP_PATH 
fi
cp -r COPY_FOR_VIM/.vim ~/ 


# make plugin dir for vim-prettier
mkdir -p ~/.vim/pack/plugins/start

# clone it content into it dir
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier


if [[ -f ~/.bashrc ]]; then 
    # backup .bashrc to ~/Documents 
    mv ~/.bashrc $BACKUP_PATH/.bashrc_old_$TODAY
fi
cp COPY_FOR_VIM/.bashrc ~/

if [[ -f ~/.vimrc ]]; then
    mv ~/.vimrc $BACKUP_PATH/.vimrc_old_$TODAY
fi
cp COPY_FOR_VIM/.vimrc ~/


if [[ -f ~/.tmux.conf ]]; then 
    # backup .tmux.conf 
    mv ~/.tmux.conf $BACKUP_PATH/.tmux.conf_old_$TODAY
fi
cp COPY_FOR_VIM/.tmux.conf ~/

# copy the config of ranger and powerline to ~/.config
cp -r ranger ~/.config 
cp -r powerline ~/.config 


# check if the use has current config of nvim
if [[ -d ~/.config/nvim ]] && [[ -n `ls -A ~/.config/nvim` ]]; then 
    # move the old config to the backup dir
    mv ~/.config/nvim $BACKUP_PATH 

fi
cp -r nvim ~/.config/ 

echo "-------------------------------------------------------"
echo "-----------Install require package START --------------"
echo "----------- Please enter your password  ---------------"
sleep 5s
sudo -s ./run_install.sh

echo "---------------------------------------------------------"
echo "------------The process has been done successfully ------"
echo " your old config file has kept in $BACKUP_PATH "
echo "----------- program will be terminate  ------------------"
echo "---------- please NOTE: you may have to logout or reload this "
