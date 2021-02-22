" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse+=r                             " Enable your mouse for the right click

"set nowrap                              " Display long lines as just one line
"set pumheight=10                        " Makes popup menu smaller
"set splitbelow                          " Horizontal splits will automatically be below
"set background=dark                     " tell vim what the background color looks like
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
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
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs 
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else




" I just realize that I need wrap
" because I want the whole code to show on the screen without scroll throught it
set wrap
set linebreak

set relativenumber
set scrolloff=8
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


" toggle search hilight by press CTRL+c
let hlstate=0
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>


"set autochdir                           " Your working directory will always be the same as your working directory

"au! BufWritePost ~/.config/nvim/init.vim source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC


" You can't stop me
"cmap w!! w !sudo tee %
