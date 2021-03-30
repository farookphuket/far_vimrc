
"   last update 22 Feb 2021 
" the variable to use 
let hlstate=0

let loaded_matchparen = 1

" set Spacebar key as the leader key
let mapleader = " "

let g:netrw_browse_split = 4

let g:netrw_banner = 0

let g:netrw_winsize = 22

let g:bujo#todo_file_path = $HOME . "/.cache/bujo"



let g:user_emmet_leader_key=','









" ------------------- SETTING -------------------- 


set laststatus=2
set statusline=%{fugitive#statusline()}%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" use this line to do right click and past
set mouse+=r

" this line is very Important! if you are not native English speaking like me
set encoding=utf-8
" without this line vim will not show your language correctly! ภาษาไทยโอเค



" Show the under line when cursor in focus
set cursorline

" This shows what you are typing as a command. I love this!
set showcmd



" set auto spell check
set complete+=kspell


" copy from ThePrimeagen
"   show extra column on the left if thereis error sign
set signcolumn=yes


set nohlsearch


" Necesary for lots of cool vim things
set nocompatible

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
syntax on
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab? Not me!
set shiftwidth=4
set softtabstop=4



set guicursor=


set relativenumber


set hidden

set noerrorbells


set shiftwidth=4

set expandtab

set smartindent

set nu


" Cool tab completion stuff


" copy this code form https://www.youtube.com/watch?v=2f8h45YR494
" on date 14-July-2020
" set auto completion

"   now  
set completeopt=menuone,longest



"set wildmenu
"set wildmode=list:longest,full

" search and hilight
" Ignoring case is a fun trick

set ignorecase



" And so is Artificial Intellegence!

set smartcase



" Incremental searching is sexy

set incsearch



" Highlight things that we find with the search

set hlsearch



" I just realize that I need wrap
" because I want the whole code to show on the screen without scroll throught it
set wrap
set linebreak



set smartcase

set noswapfile

set nobackup

set undodir=~/.vim/undodir

set undofile


set termguicolors

set scrolloff=8




" Give more space for displaying messages.
set cmdheight=2



" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable

" delays and poor user experience.

set updatetime=50



" Don't pass messages to |ins-completion-menu|.
set shortmess+=c



set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey




"   copy the setup from this page 19-Feb-2021
"   https://medium.com/vim-drops/be-a-html-ninja-with-emmet-for-vim-feee15447ef1
let g:user_emmet_leader_key=','
