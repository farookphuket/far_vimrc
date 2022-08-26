#!/bin/bash 



echo " =================  COPY VIM Config ========================= "
echo " this will copy the .vim config folder to your ~/ "
echo " your old vim config will be backup to ~/Documents/vim_backup"
echo " "
echo " ============================================================="


# the backup will append datetime to the file or folder
TODAY=$(date +"%Y-%M-%d_at_%H:%M:%S")

# create backup folder
mkdir -p ~/Documents/$USER_vim_backup 

# then set the variable for backup path
backup_path=~/Documents/vim_backup

# copy from path 
copy_source=~/far_vimrc/VIM2022/

# check if .vim folder exist
if [ -d ~/.vim ]; then
   
    # then copy to the backup path 
#    cp -r ~/.vim $backup_path/.vim_$TODAY

    dot_vim_dir=$backup_path/.vim_$TODAY

    echo " .vim backup to "
    echo " $dot_vim_dir "
    
    # delete the current .vim folder
#    rm -rf ~/.vim
fi

# 
if [ -f ~/.vimrc ]; then 
    # check if .vimrc exist
    # then copy to backup folder
    #cp ~/.vimrc $backup_path/.vimrc_$TODAY

    dot_vim_file=$backup_path/.vimrc_$TODAY

    echo " .vimrc backup to "
    echo " $dot_vim_file "

    # delete the current .vimrc
    #rm -rf ~/.vimrc
fi

# copy .vim from far_vimrc
#cp -r $copy_source/.vim ~/

# copy .vimrc from far_vimrc
#cp $copy_source/.vimrc ~/


sleep 5s
echo " ======================== Copied ======================================="

sleep 5s
exit 



