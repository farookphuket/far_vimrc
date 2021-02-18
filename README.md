# My .vimrc .tmux.conf .bashrc




## dot file is hidden

>   so after you run `git clone https://github.com/farookphuket/far_vimrc.git`
>   then cd into the folder "far_vimrc" or in your file browser program 
>   you have press "Ctrl+h" to see the "DOT file or Config file"
>   press F5 to refresh Linux will hide dot file by default so without 
>   pressing "Ctrl+h" you won't be able to see the dot file





>   .zsrc ,ranger-config file and vim config that I use on 31-Jan-2021
>   year 2021 I am completely using Manjaro on Desktop and Laptop 
>   I love Ubuntu,Debian,PopOS,Linux Mint,MX Linux and by the way 
>   I do not hate window because all the computer stuff was giving me an 
>   opportunity! the opportunity for me to learn thing and do some stupid mistake
>   for free.

>   my system is manjaro on both Laptop and pc (to me I felt like I love more 
>   to use manjaro than Ubuntu) 

>   this config I have test on Manjaro 20.2 
>   Ubuntu 20.04 ,PoP!_OS it is working great!








#   Any way!


> before you will say "Dude I got an Error your code|config is not working"
>   and I will say to you "Dude, I don't know,
>   it is working very well on mine ,
>   I don't know what is in your system
>   or what you have been done"

>   so my belove friends before you going to copy all of this to your home 
>   folder please make sure that you know "What the hell you're doing now?"
>   otherwise you'll be end up with messed up your system with not thing 
>   good on your system

#   so Check your system first! and use this as your own risk!

>   Goodluck







-   do you have gvim install?
-   have you run update your system? if you're not? do it now! 
`sudo apt update && sudo apt upgrade -y` on Ubuntu or 
`sudo pacman -Syyuu --noconfirm` for manjaro



#   Date 18 Feb 2021 | NVim Only!

>   I just install nvim on 18-Feb-2021 as my first time ever use neovim 
>   so just to remind me in case I forgot this key some time and it's maybe
>   can be one references too

##  Nvim Key Bindding

1.  Open nvim type "nvim ." this will open the new Lexplorer now select the 
file to open then press `<Ctrl+j>` then `:q` 



2.  file browser (Coc explorer) "Coc explorer" is not install yet!
so make sure that you have run the command ":CocInstall coc-explorer" 
run "PlugUpdate" or "PlugInstall" then press `<Space>+cr+enter` 

-   toggle coc-file-explorer press `<Space>+ct` 
-   move cursor down press "j" 
-   move cursor up press "k"
-   expan the folder(folder with start by the + sign ) press "gl"
-   collapse the folder(folder with start by the - sign ) press "gh"
-   Create new dir press "<Shift>+a"
-   Create new file press "a"
-   Rename file and folder press "r"
-   Copy  file press "yy"
-   Move file (Cut) to another folder press "dd"
-   Paste file press "p"
-   Delete file press "dF"
-   Show hidden file press "g."
-   Toggle on/of hidden file in node press "zh"



## what I've done? OR What I have learn




##  Date 18 Feb 2021 

>   Just install neovim and get some config follow nick's and use his config
>   (well ,just a little bit cofig it on my own) using color scheme "jellybeans"
   









### 31 Jan 2021 if your ranger NOT image preview

>   if you fireup ranger and you find out that the image is NOT preview
>   make sure you do have "w3m" install because image preview need it 
>   on manjaro simply type `sudo pacman -S w3m ` now you're set












<br />



[my_laptop_look]:https://i.ibb.co/1R9ZVVs/2021-01-31-my-laptop-desktop.png

[ranger_img_preview]:https://i.ibb.co/D95VD5p/2021-01-31-ranger-image-preview.png

#   Ranger image preview need w3m 31 Jan 2021

>   install w3m in manjaro `sudo pacman -S w3m`


![ranger image preview][ranger_img_preview]





<br />






# Date 3 Feb 2021 

###     vim monokai color scheme baby! 

> I just re-install manjaro KDE 20.2.1 on my desktop and set the new `.vimrc`
> in the folder `mx-linux19_16-Dec-2020` you will get this color scheme the 
> color switch on this .vimrc I use is "monokai" download from here 
> `git clone https://github.com/sickill/vim-monokai.git ` 







[vim_monokai]:https://i.ibb.co/gR7v9Wt/2021-02-03-color-scheme-monokai.png

![vim monokai color scheme][vim_monokai]




<br />


#   my laptop use Manjaro kde 

>   Manjaro KDE is the best linux that in my favorite for very long time
>   and last year (by about 14 nov 2020) I just start to use i3wm 
>   I know that it has been for quite a long time but to me is new and I love 
>   it living with it and config has mess around got an headache is so fun

![my laptop on 31 Jan 2021][my_laptop_look]





<br />


###  Report Date 16 Dec 2020 from Manjaro 20


>   There is the file created by git living in the path of `.git/objects/pack/`
>   the file size has increase up-to 450 MB which is unacceptable because 
>   it's will take a whole lot of time to clone or pull that's bad if just 
>   compare to the code base so I was try to fix this problem.





---

##  Date 26 Jan 2021

>   create undodir in `.vim` folder








---

-   Date 12 Jan 2021
1.  just added

```

set signcolumn=yes
set nohlsearch


augroup FAROOK
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()

    autocmd FileType typescript :call GoYCM()
    autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()

    autocmd CursorHold  * update
augroup END


```


---

-   Date 16 Dec 2020

1.  Try to remove the big `.pack` file form `.git` folder by manually 
delete with the command `rm -rf .git/objects/pack*` and re-create new 
`README.md` file | result is `ERROR` cannot do that




2.  Now try to switch to new branch call `main` with the comman 
`git checkout -b main` then I edit the `README.md ` file  the run  `git add .` 
follow by ` git commit -m"message here" ` follow by ` git push -u origin main ` 
it will show some ERROR but it will push the file to github next I login via 
browser then set `main` as a default branch then delete the other branch
and I will recreate the branch `master desktop laptop ` and after update 
thing done I will change the default branch back to `master` again now let 
push and see the result.





3.  The method 2 is success now the branch `master` has been created and this 
step I edit the README.md file the push it to master branch the I ran 
`git checkout desktop` to create the desktop branch then edit the README.md 
file then push the commit next I will change the default branch from `main` 
to `master`





4.  Success! now I use the laptop then I ran 
`git clone https://github.com/farookphuket/far_vimrc.git ` 
to the my home folder it is only 50+ MB of file size I then create the new 
branch call `laptop` just to references back to this machine and I edit the 
README.md file edit vimrc file in `mx-linux19_7-3-2020` then I  run `push` 
command to push it to git so....that's it for now








##  The big file problem has been solved!! today baby!

<br />


[sexy_girl_4]:https://image.shutterstock.com/z/stock-photo-asian-sexy-girl-woman-in-blue-white-streak-panties-401518468.jpg

![sexy girl baby][sexy_girl_4]










<br />

---





-   Date 11 Dec 2020

1.  test this config on `Ubuntu Server 20.04` it is working good
the file `.profile` is what I am using on `Debian ,PoP OS ,Ubuntu` (I only 
test on 3 of them) so if you using `Manjaro` or you don't care what the 
hell is `learning and using laravel to create my website` this file is 
NOT REQUIRE or really NOTHING FOR YOU TO WORRY!



<br />





[ubuntu-server]:https://i.ibb.co/dJmsfH6/2020-12-11-ubuntu-server.png
![Ubuntu Server 11 Dec 2020][ubuntu-server]





<br />

---

#   Date 31 Jan 2021 NO MORE "YouCompleteMe"

>   I was so stupid I don't know why the ".vim/plug/YouCompleteMe" has carry
>   upto 2 GB this is too much I can't take it so I just remove "YouCompleteMe"
>   and use "CoC" instead as I did nothing too much on my stupid project 
>   code base







-   Date 30 Nov 2020




1.  just a small update for any one who have a problem with `YCMD` like I use to
make sure you're read this very well or please go to `https://github.com/ycm-core/ycmd`
for a better way `YCMD` setup






2.  floating window `fzf` when hit `space+pf` <br />

[fzf_float_window]:https://i.ibb.co/0YDZj2k/float-window.png
![floating window][fzf_float_window]






<br />


---

-   Date 18 Oct 2020
1.  include "ranger/rc.conf" file for the "ranger terminal file browser" if you want to use ranger make sure that you have config it the way that I did.I don't have document for it by now nut soon I will.



---

-   Date 6 Oct 2020


1.  Added ".zshrc" into the folder to use "oh-my-z" you have to install it first
`sudo apt install zsh curl -y` then paste this code to run `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` to learn more go to the website `https://ohmyz.sh/`





---


-   19-Sep-2020
1.  change my .vimrc file
2.	add powerline.conf file into the folder to make it work with manjaro well
3.  test on manjaro 20 on 19-Sep-2020 it is working just great ha ha




#   how to copy from vim to system clipboard?

>  from normal mode press `<Shift>+v` to select text then press `<Control>+y`
>  to yank(copy) then in the other text program press `<Control>+v` to paste
>   **make sure that you have install gvim otherwise this will not work!**









#   how to paste from system clipboard to vim?

>   in normal mode press `<Spacebar>+yy` that's what you have to do Volla!

>   **make sure that you have install gvim otherwise this will not work!**











#   TMUX 31-Jan-2021 

>   I just have a feelling like I want the status bar to be at the bottom rather
>   than on the top 







[tmux_bottom_status_line]:https://i.ibb.co/gTBnNrT/2021-01-31-tmux-status-bottom.png

![tmux bottom status line][tmux_bottom_status_line]












#   how to open split window vertical | horizontal?

-   open split window vertical.
1.  in your normal mode press `<Spacebar>+vsp>`
2.  to switch to window left press `<Spacebar>+h`.
3.  to switch to window right press `<Spacebar>+l`.

-   open split window in horizontal.
1.  in your normal mode press `<Spacebar>+sp`.
2.  switch to below window press `<Spacebar>+j`.
3.  switch to upper window press `<Spacebar>+k`.



#   how to open the split panel in tmux

-  use key `Ctrl+a+|` to split horizontal 


[tmux-split-horizontal]:https://i.ibb.co/KKFQqqV/2021-01-31-tmux-split-horizontal.png

![tmux split horizontal][tmux-split-horizontal]






<br />



-  use key `Ctrl+a+-` to split vertical 



[tmux-split-vertical]:https://i.ibb.co/Z1bNCKp/2021-01-31-tmux-split-vertical.png

![tmux split vertical][tmux-split-vertical]





<br />


#   to navigate to tmux panel

-   use key `Ctrl+a+aero key`






<br />


#   to close tmux split panels

-   use key `Ctrl+a+x`


















---

# are you ready for me,baby?



<br />



[sexy_girl_2]:https://mensfitnessmagazine.com.au/wp-content/uploads/2018/06/sexy-girl.jpg
![sexy girl 2][sexy_girl_2]











---



# BEFORE YOU INSTALL!!(it's means you are ready to die!)


1. make sure you have powerline install on your system if you don't 
so let install it!


> Ubuntu ,PopOS ,Debian ,Linux-mint run `sudo apt install powerline`


> Manjaro run `sudo pacman -S powerline`




## Only do this if your command prompt doesn't show git branch


> Manjaro doesn't show git branch in the command prompt to fix that go to 
> your home directory looking for the .config folder then paste paste  
> powerline folder into it

> NOTE : only do this if you **CANNOT** see git branch in your command 
> prompt otherwise skip this part


[powerline_conf1]:https://i.ibb.co/BwBwG6s/config-powerline1.png
![in manjaro 20 copy powerline folder][powerline_conf1]


> it's will look more link this

[powerline_conf2]:https://i.ibb.co/JjqwYF7/config-powerline2.png
![then paste folder 'powerline' to .config in your home dir][powerline_conf2]




2.  we're not use "Vundle" but we using "Plug" instead! to install Plug

> copy the below code paste into your terminal then hit Enter


```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```



3. unzip the file name "farook_vim_conf_xxxx.7zip" (xxx is the date will be depends on when is the last update from me ) then copy ".vimrc" ".vim(folder)" ".bashrc" ".tmux.conf" ".zshrc" into your home directory


#   to using YCMD(You complete Me plugin) make sure you have done this.

-   update 30 Nov 2020 (for Manjaro if you're Ubuntu please skip this).

    1.  make sure that you have run `sudo pacman -Syyuu` if you're not? do it now! this process will take about 30 minute please be patient because you have to wait.


    2. make sure you have install `Clang`(install clang `sudo pacman -S clang` from `https://ecuadorminingnews.com/install-clang/`) ,`go`(install go `sudo pacman -S go` from `https://www.jeremymorgan.com/tutorials/golang/golang-manjaro-linux/`) ,`java` (install java `sudo pacman -S jre-openjdk` then run `sudo pacman -S jdk-openjdk` from https://www.tecmint.com/install-java-on-arch-linux/) you'll better go to the website for the further info as I am very bad for explain .





4.  if you use vim like I do so now it's time to fire-up your vim by type `vim ~/.vimrc`

-   in your vim editor press type `:PlugInstall` this command will create "YouCompleateMe" folder in path ".vim/plugged/YouCompleateMe"


-   open the terminal type `cd ~/.vim/plugged/YouCompleteMe`


-   now inside "YouCompleteMe" type `./install.py --all` if it success no error then we're good now


-   type `vim ~/.vimrc` press `:PlugUpdate` this will update to the lastest 
plugin you have when it's done type `:PlugClean` to clean up not being use 
plugin that we have here that's all I have to set-up when I use this repo for 
my vim on linux box


##  Dear friends I do not use "YouCompleteMe" 

>   Date 31 Jan 2021 I am not using "YouCompleteMe" completely simply because
>   I believe I dit some stupid mistake on the configuartion the YouCompleteMe
>   folder takeing up to 2 GB of the space that too much I can't take it so
>   I just remove "YouCompleteMe" completely at least for this moment









#   still in the troble? google is your good friend!

>   my e-mail `farookphuket@gmail.com`(The Pronunciation is Far-Rook-Poo-ket
>   NOT FAR-Rook-Fuck-GET! baby)
>   my website : `farookphuket.com` and  `see-southern.com`




# bind key Control-t to toggle NERDTree in tmux file .tmux.conf

>   it is better to having the same key binding in vim
>   updated on 19 Sep 2020 now you can scroll by using your mouse inside tmux window.




[where_source]:https://i.ibb.co/Wkdz8Fj/scroll-in-tmux.png
![get from][where_source]







## how do I make Youcompleteme work
> and a little bit set up my color scheme to gruvbox

[![](http://img.youtube.com/vi/QcwahKkTjT0/0.jpg)](http://www.youtube.com/watch?v=QcwahKkTjT0 "")





# My .vimrc file on Thu 2 July 2020


> my .vimrc file that I use now on Manjaro  just feel free to copy

> I stop using this config on 11 July 2020 but if you'd like to use it so 
> just go ahead and copy it file name ".vimrc" location "~/.vimrc"






---









