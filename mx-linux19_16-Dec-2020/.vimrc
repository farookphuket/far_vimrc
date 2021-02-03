"Auto Commands

" Automatically cd into the directory that the file is in
" nochem not good for diffsplit
" autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
"autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
au!
autocmd BufReadPost *
\ if expand("<afile>:p:h") !=? $TEMP |
\ if line("'\"") > 1 && line("'\"") <= line("$") |
\ let JumpCursorOnEdit_foo = line("'\"") |
\ let b:doopenfold = 1 |
\ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
\ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
\ let b:doopenfold = 2 |
\ endif |
\ exe JumpCursorOnEdit_foo |
\ endif |
\ endif
" Need to postpone using "zv" until after reading the modelines.
autocmd BufWinEnter *
\ if exists("b:doopenfold") |
\ exe "normal zv" |
\ if(b:doopenfold > 1) |
\ exe "+".1 |
\ endif |
\ unlet b:doopenfold |
\ endif
augroup END

"}}}
"" status bar that rocks

"{{{Misc Settings


" This shows what you are typing as a command. I love this!
set showcmd

" Folding Stuffs
"set foldmethod=marker


" Necesary for lots of cool vim things
set nocompatible

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

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

" This is totally awesome - remap jj to escape in insert mode. You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop>

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Since I use linux, I want this
" nochem still not sure what's going on with clipboard
"let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden


set noswapfile
 
set nobackup
 
set undodir=~/.vim/undodir
 
set undofile


" Give more space for displaying messages.
 set cmdheight=2
 
 " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
 
 " delays and poor user experience.
 
 set updatetime=50



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





"Status line gnarliness
set laststatus=2
set statusline=%{fugitive#statusline()}%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"Functions

" Open URL in browser

function! Browser ()
let line = getline (".")
let line = matchstr (line, "http[^ ]*")
exec "!konqueror ".line
endfunction


"{{{Theme Rotating
let themeindex=0
function! RotateColorTheme()
let y = -1
while y == -1
let colorstring = "inkpot#ron#blue#elflord#evening#koehler#murphy#pablo#desert#torte#"
let x = match( colorstring, "#", g:themeindex )
let y = match( colorstring, "#", x + 1 )
let g:themeindex = x + 1
if y == -1
let g:themeindex = 0
else
let themestring = strpart(colorstring, x + 1, y - x - 1)
return ":colorscheme ".themestring
endif
endwhile
endfunction
" }}}

"{{{ Paste Toggle
let paste_mode = 0 " 0 = normal, 1 = paste

func! Paste_on_off()
if g:paste_mode == 0
set paste
let g:paste_mode = 1
else
set nopaste
let g:paste_mode = 0
endif
return
endfunc
"}}}

"{{{ Todo List Mode

function! TodoListMode()
e ~/.todo.otl
Calendar
wincmd l
set foldlevel=1
tabnew ~/.notes.txt
tabfirst
" or 'norm! zMzr'
endfunction

"}}}

"

"{{{ Mappings

" Open Url on this line with the browser \w
map <Leader>w :call Browser ()<CR>

" Open the Project Plugin <F2>
nnoremap <silent> <F2> :Project<CR>

" Open the Project Plugin
nnoremap <silent> <Leader>pal :Project .vimproject<CR>

" TODO Mode
nnoremap <silent> <Leader>todo :execute TodoListMode()<CR>

" Open the TagList Plugin <F3>
nnoremap <silent> <F3> :Tlist<CR>

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
"nnoremap <silent> <C-t> :tabnew<CR>

"toggle NERDTree press Control+t to toggle NERDTree
map <C-t> :NERDTreeToggle<CR>



nnoremap <leader>h :wincmd h<CR>

nnoremap <leader>j :wincmd j<CR>

nnoremap <leader>k :wincmd k<CR>

nnoremap <leader>l :wincmd l<CR>

"nnoremap <leader>u :UndotreeShow<CR>


nnoremap <Leader>+ :vertical resize +5<CR>

nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <Leader>rp :resize 100<CR>





" Rotate Color Scheme <F8>
" nnoremap <silent> <F8> :execute RotateColorTheme()<CR>

" DOS is for fools.
nnoremap <silent> <F9> :%s/$//g<CR>:%s// /g<CR>

" Paste Mode! Dang! <F8>
nnoremap <silent> <F8> :call Paste_on_off()<CR>
set pastetoggle=<F8>

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Edit gvimrc \gv
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Good call Benjie (r for i)
nnoremap <silent> <Home> i <Esc>r
nnoremap <silent> <End> a <Esc>r

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Space will toggle folds!
"nnoremap <space> za

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz



" Testing
set completeopt=longest,menuone,preview

inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

" Swap ; and : Convenient.
" nochem not convenient, because you are going to use 10000 vims with 10000 users
"nnoremap ; :
"nnoremap : ;

" Fix email paragraphs
nnoremap <leader>par :%s/^>$//<CR>

"ly$O#{{{ "lpjjj_%A#}}}jjzajj

"}}}

"{{{Taglist configuration
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0
"}}}

let g:rct_completion_use_fri = 1
"let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_ViewRule_pdf = "kpdf"

filetype plugin indent on
syntax on

colorscheme monokai
"Open new split panes to right and bottom, which feels more natural than Vim’s default:

set splitbelow
set splitright


"set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

call plug#begin('~/.vim/plugged')


Plug 'neoclide/coc.nvim', {'branch': 'release'} 




Plug 'junegunn/fzf.vim'



Plug 'tpope/vim-fugitive'

" hit gc to comment
Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'


" Puppet syntax
Plug 'rodjek/vim-puppet'

" version control gutter (works with git)
Plug 'airblade/vim-gitgutter'

" Seamlessly navigate between tmux and vim panes
Plug 'christoomey/vim-tmux-navigator'


" vim auto pair 21-Sep-2019
Plug 'jiangmiao/auto-pairs'



" vimairline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" sparkup
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" add php auto complete 13-Sep-2019
Plug 'shawncplus/phpcomplete.vim'
" SuperTap 14-Sep-2019
Plug 'ervandew/supertab'

" multi cursor 23-Sep-2019
Plug 'terryma/vim-multiple-cursors'


" NERDTree 24-Sep-2019
Plug 'scrooloose/nerdtree'

" Just markdown 10 Oct 2019 Laptop
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


" html tag easy by emmet
Plug 'mattn/emmet-vim'



"call vundle#end() " required
call plug#end()


" Show the under line when cursor in focus
 set cursorline


" this key binding will not work if you don't have gvim install!                
" copy to system clipboard in Vitual Mode                                                                  
" to paste from system clipboard use Control+Shift+v                            
vmap <C-y> "+y                                                                  
" map key Control+y for copy from vim to system clipboard on 16-July-2020        
" IMPORTANT!! please Install GVim in order to make the above key binding work   
                                                                                 
                                                                                 
                                                                                 
" easy paste long text from clipboard                                           
nnoremap <leader>pp "+p 

nnoremap <leader>cr :CocRestart


" show the buffers list
nnoremap <Leader>ll :ls<CR>




" open vertical split
nnoremap <Leader>vsp :vsp<CR>


" open horizontal split
nnoremap <Leader>sp :sp<CR>



nnoremap <Leader>pf :Files<CR>



let g:netrw_browse_split = 4

let g:netrw_banner = 0

let g:netrw_winsize = 22
map <leader>t :Lexplore<CR>

" Map the <Space> key to toggle a selected fold opened/closed.
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" vnoremap <Space> zf
