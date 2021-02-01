#   Read me carefully!


##  Linux user!

> you maybe cannot see the "dot" file because it is hidden
> all you have to do is press `Control+h` key on your keyboard
> to show the file content in this folder


#   before you copy all of this to your home folder please make sure "What the hell you're doing now?"

>   Check your system first!

-   do you have gvim install?
-   have you run update your system? if you're not? do it now! `sudo apt update && sudo apt upgrade -y` on Ubuntu or `sudo pacman -Syyuu --noconfirm` for manjaro 





1. install powerline
        
>   Ubuntu run `sudo apt install powerline`
>   Manjaro run `sudo pacman -S powerline`



2. the config using "Plug" instead of "Vundle" to install Plug
    
>   copy the below code
        

```
            curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```
        


>   then paste it into your terminal hit enter
    



   
#   to using YCMD(You complete Me plugin) make sure you have done this.

-   update 30 Nov 2020 (for Manjaro if you're Ubuntu please skip this).

    1.  make sure that you have run `sudo pacman -Syyuu` if you're not? do it now! this process will take about 30 minute please be patient because you have to wait.
    2. make sure you have install `Clang`(install clang `sudo pacman -S clang` from `https://ecuadorminingnews.com/install-clang/`) ,`go`(install go `sudo pacman -S go` from `https://www.jeremymorgan.com/tutorials/golang/golang-manjaro-linux/`) ,`java` (install java `sudo pacman -S jre-openjdk` then run `sudo pacman -S jdk-openjdk` from https://www.tecmint.com/install-java-on-arch-linux/).






3. copy ".vimrc"  ".vim(folder)" ".bashrc" ".tmux.conf" to your home directory.

-   open your terminal then run `vim .`
-   type `:PlugUpdate` hit enter
-   type `:q` hit enter 
-   now in your terminal window type `cd ~/.vim/plugged/YouCompleteMe` 





>   last update 30-Nov-2020
>   type `cl hit enter` to clear the screen






# just a little change key bind for tmux file .tmux.conf

```

# Our .tmux.conf file
# Setting the prefix from C-b to C-s

set -g prefix C-a

# Free the original Ctrl-b prefix keybinding
unbind C-b

#setting the delay between prefix and command
set -sg escape-time 1
# Ensure that we can send Ctrl-S to other apps
bind C-a send-prefix
# Set the base index for windows to 1 instead of 0
set -g base-index 1
# Set the base index for panes to 1 instead of 0
setw -g pane-base-index 1
# Reload the file with Prefix r
bind r source-file ~/.tmux.conf \; display "Reloaded!"
# splitting panes
bind | split-window -h
bind - split-window -v
# smart pane switching with awareness of vim splits
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-l) || tmux select-pane -R"
bind -n C-\ run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys 'C-\\') || tmux select-pane -l"

# Moving between windows, gnome-terminal style
bind -n C-PgUp select-window -t :-
bind -n C-PgDn select-window -t :+

# open nerdtree panel
bind -n C-T :NERDTreeToggle
set-window-option -g xterm-keys on

# move windows forward and backwards, gnome-terminal style
bind-key -n C-S-Left swap-window -t -1
bind-key -n C-S-Right swap-window -t +1

# use the mouse
set-window-option -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

# use vim-bindings for copying and pasting text
unbind [
bind Escape copy-mode

# use vim-bindings for copying and pasting text
unbind [
bind Escape copy-mode
unbind p
# move x clipboard into tmux paste buffer
bind p run "tmux set-buffer \"$(xclip -o -set clipboard)\"; tmux paste-buffer"

#bind -t vi-copy 'v' begin-selection
# # move tmux copy buffer into x clipboard
#bind -t vi-copy y copy-pipe 'xclip -in -set clipboard'


#unbind p
#bind p run "xclip -o | tmux load-buffer - ; tmux paste-buffer"
#bind-key -t vi-copy 'v' begin-selection
## see http://unix.stackexchange.com/questions/131011/use-system-clipboard-in-vi-copy-mode-in-tmux
#bind-key -t vi-copy 'y' save-buffer
#bind -t vi-copy y copy-pipe 'xclip -i'
#bind -t vi-copy V rectangle-toggle

# end corentin

# Pane resizing
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5
# Set the default terminal mode to 256color mode
set -g default-terminal "screen-256color"
# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on
# set the status line's colors
set -g status-fg white
set -g status-bg black
# set the color of the window list
setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr dim
# set colors for the active window
setw -g window-status-current-fg white
setw -g window-status-current-bg red
setw -g window-status-current-attr bright
# pane
set -g pane-border-fg green
set -g pane-border-bg black
set -g pane-active-border-fg white
set -g pane-active-border-bg yellow
# Command / message line
set -g message-fg white
set -g message-bg black
set -g message-attr bright
# Status line left side
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
set -g status-utf8 on
# Status line right side
# 15% | 28 Nov 18:15
#set -g status-right "#(~/battery Discharging) | #[fg=cyan]%d %b %R"
# Update the status bar every sixty seconds
set -g status-interval 60
# Center the window list
set -g status-justify centre
# enable vi keys.
setw -g mode-keys vi
# Open panes in the same directory using the tmux-panes script
#unbind v
#unbind n
#bind v send-keys " ~/tmux-panes -h" C-m
#bind n send-keys " ~/tmux-panes -v" C-m
# Maximize and restore a pane
#unbind Up
#bind Up new-window -d -n tmp \; swap-pane -s tmp.1 \; select-window -t tmp
#unbind Down
#bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp
#
# Log output to a text file on demand
bind P pipe-pane -o "cat >>~/#W.log" \; display "Toggled logging to ~/#W.log"
set -g history-limit 10000

set-option -g status-position top

#new-window
new-session

```
