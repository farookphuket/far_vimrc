#!/bin/bash



# the backup will append datetime to the file or folder
TODAY=$(date +"%Y-%M-%d_at_%H:%M:%S")


./file_manager.sh



sudo ./sudo_root.sh

# will clone zsh from gitlab to ~/
echo " ===== change the pwd to $HOME for copy zsh config ==========="
pushd ~/ 

echo "clone zsh config from gitlab "
git clone https://gitlab.com/farookphuket/my_zsh.git 

cd ~/my_zsh/ZSH/FOR_UBUNTU

if [ -d /usr/share/zsh ] 
then
    # create the backup folder into ~/Documents for the user 
    mkdir -p ~/Documents/ZSH_BACKUP
    bak_zsh=~/Documents/ZSH_BACKUP/
    cp -r /usr/share/zsh $bak_zsh/zsh_$TODAY 

    # remove the existing zsh folder since we have a backup 
    sudo rm -rf /usr/share/zsh


    echo " ======================== your zsh has been backup ================="
    echo " your old zsh config will be found in $bak_zsh "
    echo " the backup of zsh will be append $TODAY to the end of folder name"
    echo " "

fi

sudo cp -r zsh /usr/share/
sudo cp -ru zsh-theme-powerlevel10k /usr/share/

# copy the .zshrc file to ~/ 
cp .zshrc ~/

popd

chsh -s /usr/bin/zsh



echo "============== Dear $USER please reboot your system"

sleep 5s 

#reboot
