#!/bin/bash



#   copy the config file
#   ranger config
cp -r ranger ~/.config/
cp -r powerline ~/.config

#   rename .vim folder just incase something wrong we can go back
#   first if 
if [[ -d ~/.vim ]] && [[ -n `ls -A ~/.vim` ]]; then
    # if found the ~/.vim then make a backup 
    mv  ~/.vim ~/.vim.old
    
    # copy the .vim to ~/ 
    cp -r .vim ~/
fi

# copy .vim to ~/ 
cp -r .vim ~/

#   rename and copy the ccnfig file
mv ~/.bashrc ~/.bashrc.old
cp .bashrc ~/

mv ~/.vimrc ~/.vimrc.old
cp .vimrc ~/

mv ~/.tmux.conf ~/.tmux.conf.old
cp .tmux.conf ~/

echo "the config file has been copied! program terminated"
sleep 5s

exit

