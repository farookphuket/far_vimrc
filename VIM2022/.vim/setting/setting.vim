

" set Spacebar key as the leader key
let mapleader = " "

let g:netrw_browse_split=4

let g:netrw_banner=0

let g:netrw_winsize=22


let hlstate=0

" from https://thevaluable.dev/vim-browsing-remote-netrw/
set nocp

" Necesary for lots of cool vim things
set nocompatible

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on

" show tap on top
set showtabline=2   
 

set nu						" | show line number


" | show relative line number
set relativenumber				 
" | so this way I now which line number from the current i will jump

set scrolloff=8 				

" | i need to see 80 column
set colorcolumn=80				

" | then hightlight it 80 characters
highlight ColorColumn ctermbg=0 guibg=lightgrey	

" | no backup file 
set nobackup
set nowritebackup


" Ignoring case is a fun trick 
set ignorecase

" show highlight at the cursor line
set cursorline

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              		            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse+=r                            " Enable your mouse for the right click
set splitbelow                          " Horizontal splits will automatically be below
set background=dark                     " tell vim what the background color looks like
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else

set showmode                            " I love to see vim mode

" I just realize that I need wrap
" because I want the whole code to show on the screen without scroll throught it
set wrap
set linebreak


set grepprg=grep\ -nH\ $*


" fugitive#statusline
set statusline=%{fugitive#statusline()}%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" ======================== vim-airline-themes START =====================
" vim-air-line setup 
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='alduin'

" ======================== vim-airline-themes END   =====================

" ======================= gitgutter START ===================

let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" ======================= gitgutter END ===================
" ======================= Powerline 
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

" Incremental searching is sexy
set incsearch


" Highlight things that we find with the search
set hlsearch


set completeopt=menuone,longest

" no swap file baby!!!
set noswapfile


" toggle search hilight by press CTRL+c
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>

" this is the change on 4 Aug 2022
" I love the background deep dark 
hi Normal ctermbg=16 guibg=#000000
hi LineNr ctermbg=16 guibg=#000000




 
" emmet need this line 
let g:user_emmet_leader_key=','
 
" colorscheme habamax
" I am so in love with the yellow color in vim so crazy beautiful!!!
"colorscheme murphy
colorscheme jellybeans 




autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


" when open a big file is too slow 2 oct 2022 let see if this will fix it

" file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction



