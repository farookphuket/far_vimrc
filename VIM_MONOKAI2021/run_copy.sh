#!/bin/bash


USER_NAME=$USER
TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")

mkdir ~/Documents/vim_old
BACKUP_PATH=~/Documents/vim_old

if [[ -d ~/.vim ]] && [[ -n `ls -A ~/.vim` ]]; then
    # backup if user has his config
    mv ~/.vim $BACKUP_PATH
fi

# copy the .vim config dir to ~/
cp -r .vim ~/

# make plugin dir for vim-prettier
mkdir -p ~/.vim/pack/plugins/start

# clone it content into it dir
git clone https://github.com/prettier/vim-prettier ~/.vim/pack/plugins/start/vim-prettier



if [[ -d ~/.config/nvim ]] && [[ -n `ls -A ~/.config/nvim ` ]]; then
    mv ~/.config/nvim $BACKUP_PATH/nvim_old_$TODAY
fi
cp -r ../nvim ~/.config/


cp -r ranger ~/.config/
cp -r powerline ~/.config



# check if exit file
if [[ -f ~/.bashrc ]]; then
    # backup .bashrc
    mv ~/.bashrc $BACKUP_PATH/.bashrc_old_$TODAY
fi
cp .bashrc ~/

if [[ -f ~/.vimrc ]]; then

    mv ~/.vimrc $BACKUP_PATH/.vimrc_old_$TODAY
fi
cp .vimrc ~/

if [[ -f ~/.tmux.conf ]]; then
    mv ~/.tmux.conf $BACKUP_PATH/.tmux.conf_old_$TODAY
fi
cp .tmux.conf ~/



# show message
echo "-------------Install require package ---------------"
echo " your config has been copied "
echo " This will install the require package "
sudo -s ./run_install.sh

sleep 5s

echo "---------------Operation complete -----------"
echo " dear $USER_NAME your new config has been copied "
echo " if you want your previous vim config please go to "
echo " $BACKUP_PATH "
echo " please re-open this terminal to get en effect "

exit
