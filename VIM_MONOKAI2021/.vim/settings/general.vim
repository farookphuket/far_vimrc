" This shows what you are typing as a command. I love this!
set showcmd

" Folding Stuffs
"set foldmethod=marker


" Necesary for lots of cool vim things
set nocompatible

" Needed for Syntax Highlighting and stuff
"filetype on
syntax enable
syntax on
filetype plugin indent on

" Who doesn't like autoindent?
set autoindent


set grepprg=grep\ -nH\ $*

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab? Not me!
set shiftwidth=4
set softtabstop=4






" Use english for spellchecking, but don't spellcheck by default
if version >= 700
set spl=en spell
set nospell
endif

" Real men use gcc
"compiler gcc

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse+=r

" Let me do things with the mouse inside tmux
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase


" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
" nochem still not sure what's going on with clipboard
"let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden

set showtabline=2

set noswapfile
 
set nobackup
 
set undodir=~/.vim/undodir
 
set undofile


" Give more space for displaying messages.
 set cmdheight=2
 
 " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
 
 " delays and poor user experience.
 
 set updatetime=50



" Better tabbing
vnoremap < <gv
vnoremap > >gv



"Status line gnarliness
set laststatus=2
set statusline=%{fugitive#statusline()}%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]


set pastetoggle=<F8>

" Testing
set completeopt=longest,menuone,preview

set splitbelow
set splitright


" Show the under line when cursor in focus
 set cursorline

" Don't pass messages to |ins-completion-menu|.
 
 set shortmess+=c
 
 
 set colorcolumn=80
 
 highlight ColorColumn ctermbg=0 guibg=red
 

" Set off the other paren
"highlight MatchParen ctermbg=4
"

if executable('rg')
     
    let g:rg_derive_root='true'
     
endif
     
                    
     
let loaded_matchparen = 1


let hlstate = 0
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1    <cr>



" set Spacebar key as the leader key                                                                       
let mapleader = " "




"Taglist configuration
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0


let g:rct_completion_use_fri = 1
"let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf = "kpdf"


colorscheme monokai


"Open new split panes to right and bottom, which feels more natural than Vim’s default:

let g:netrw_browse_split = 4

let g:netrw_banner = 0

let g:netrw_winsize = 22



"   copy the setup from this page 19-Feb-2021
"   https://medium.com/vim-drops/be-a-html-ninja-with-emmet-for-vim-feee15447ef1
let g:user_emmet_leader_key=','
