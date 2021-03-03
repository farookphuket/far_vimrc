#!/bin/bash 



# this will copy the config file 
echo "----------------------Warning!-----------------"
echo "this will copy the config of vim and nvim to $HOME "
echo " last update 25 Feb 2021 "
echo "-----------------------------------"
OLD_VIMRC=~/.vimrc 
OLD_TMUX=~/.tmux.conf 
OLD_BASH=~/.bashrc 
TODAY=$(date +"%Y-%M-%d_at_%H:%M:%S")
USER_NAME=$USER
USER_BACKUP_DIR=$USER_NAME_old_vim_config_$TODAY
BACKUP_PATH=~/Documents/$USER_BACKUP_DIR 

mkdir ~/Documents/$USER_BACKUP_DIR  

if [[ -d ~/.vim ]] && [[ -n `la -A ~/.vim` ]]; then 

    # copy .vim dir to the backup path eg: ~/Desktop/user-name
    mv ~/.vim $BACKUP_PATH/.vim_old_$TODAY 
fi
cp -r COPY_FOR_VIM/.vim ~/ 



if [[-f "$OLD_BASH"]]; then 
    # backup .bashrc to ~/Documents 
    mv ~/.bashrc $BACKUP_PATH/.bashrc_old_$TODAY
fi
cp COPY_FOR_VIM/.bashrc ~/


if [[ -f "$OLD_TMUX" ]]; then 
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
    mv ~/.config/nvim $BACKUP_PATH/nvim_old_$TODAY 

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
