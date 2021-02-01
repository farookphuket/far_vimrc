" last create .vimrc on sat 11 July 2020
" code copy from youtube : https://www.youtube.com/watch?v=n9k9scbTuvQ&t=341s

" install Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" make sure the above code is just in one line without (")



" START my custom from the previos .vimrc

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


" copy this code form https://www.youtube.com/watch?v=2f8h45YR494
" on date 14-July-2020
" set auto completion
set completeopt=menuone,longest

" set auto spell check
set complete+=kspell


" copy from ThePrimeagen
"   show extra column on the left if thereis error sign
set signcolumn=yes


set nohlsearch 





" END OF My custom







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

set wildmenu

set wildmode=list:longest,full

" search and hilight
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



" toggle search hilight by press CTRL+c

let hlstate=0

nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>




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







call plug#begin('~/.vim/plugged')



Plug 'neoclide/coc.nvim', {'branch': 'release'}

"   let not use YouCompleteMe this time 
"Plug 'ycm-core/YouCompleteMe'

Plug 'tweekmonster/gofmt.vim'

Plug 'tpope/vim-fugitive'

Plug 'vim-utils/vim-man'

Plug 'mbbill/undotree'

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'vuciv/vim-bujo'

Plug 'tpope/vim-dispatch'





"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE

"  TOOOOOOOOOOOOO

Plug 'gruvbox-community/gruvbox'

Plug 'sainnhe/gruvbox-material'

Plug 'phanviet/vim-monokai-pro'

Plug 'vim-airline/vim-airline'

Plug 'flazz/vim-colorschemes'

Plug '/home/mpaulson/personal/vim-be-good'




" from my previos .vimrc
" hit gc to comment
Plug 'tpope/vim-commentary'


" try nerdtree plugin 11 July 2020
Plug 'preservim/nerdtree'


" multi cursor
Plug 'terryma/vim-multiple-cursors'

" html tag easy by sparkup
Plug 'rstacruz/sparkup'

" html tag easy by emmet
Plug 'mattn/emmet-vim'

" auto pair
Plug 'jiangmiao/auto-pairs'





call plug#end()


let g:gruvbox_contrast_dark = 'hard'

if exists('+termguicolors')

    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif

let g:gruvbox_invert_selection='0'



" --- vim go (polyglot) settings.

let g:go_highlight_build_constraints = 1

let g:go_highlight_extra_types = 1

let g:go_highlight_fields = 1

let g:go_highlight_functions = 1

let g:go_highlight_methods = 1

let g:go_highlight_operators = 1

let g:go_highlight_structs = 1

let g:go_highlight_types = 1

let g:go_highlight_function_parameters = 1

let g:go_highlight_function_calls = 1

let g:go_highlight_generate_tags = 1

let g:go_highlight_format_strings = 1

let g:go_highlight_variable_declarations = 1

let g:go_auto_sameids = 1



colorscheme gruvbox

set background=dark



if executable('rg')

    let g:rg_derive_root='true'

endif



let loaded_matchparen = 1

" set Spacebar key as the leader key
let mapleader = " "



let g:netrw_browse_split = 4

let g:netrw_banner = 0

let g:netrw_winsize = 22
map <leader>t :Lexplore<CR>


nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>

nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>

nnoremap <leader>h :wincmd h<CR>

nnoremap <leader>j :wincmd j<CR>

nnoremap <leader>k :wincmd k<CR>

nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <Leader>ps :Rg<SPACE>

nnoremap <C-p> :GFiles<CR>

nnoremap <Leader>pf :Files<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <Leader>+ :vertical resize +5<CR>

nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <Leader>rp :resize 100<CR>

nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>

" kill all buffers | keep the current open buffer | delete noname buffer that
" has create after the command %bd
nnoremap <Leader>bd :%bd\|e#\|bd#<CR>

" show the buffers list
nnoremap <Leader>ll :ls<CR>


" open vertical split
nnoremap <Leader>vsp :vsp<CR>


" open horizontal split
nnoremap <Leader>sp :sp<CR>


vnoremap J :m '>+1<CR>gv=gv

vnoremap K :m '<-2<CR>gv=gv



" vim TODO

nmap <Leader>tu <Plug>BujoChecknormal

nmap <Leader>th <Plug>BujoAddnormal

let g:bujo#todo_file_path = $HOME . "/.cache/bujo"



" Vim with me

nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>

nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray



vnoremap X "_d

inoremap <C-c> <esc>



function! s:check_back_space() abort

    let col = col('.') - 1

    return !col || getline('.')[col - 1]  =~# '\s'

endfunction



command! -nargs=0 Prettier :CocCommand prettier.formatFile

inoremap <silent><expr> <C-space> coc#refresh()



" GoTo code navigation.

nmap <leader>gd <Plug>(coc-definition)

nmap <leader>gy <Plug>(coc-type-definition)

nmap <leader>gi <Plug>(coc-implementation)

nmap <leader>gr <Plug>(coc-references)

nmap <leader>rr <Plug>(coc-rename)

nmap <leader>g[ <Plug>(coc-diagnostic-prev)

nmap <leader>g] <Plug>(coc-diagnostic-next)

nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)

nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)

nnoremap <leader>cr :CocRestart



" Sweet Sweet FuGITive

nmap <leader>gh :diffget //3<CR>

nmap <leader>gu :diffget //2<CR>

nmap <leader>gs :G<CR>



" MY Custom on 11 July 2020

" this key binding will not work if you don't have gvim install!
" copy to system clipboard in Vitual Mode
" to paste from system clipboard use Control+Shift+v
vmap <C-y> "+y
"map key Control+y for copy from vim to system clipboard on 16-July-2020
" IMPORTANT!! please Install GVim in order to make the above key binding work



" easy paste long text from clipboard
nnoremap <leader>pp "+p


"toggle NERDTree press Control+t to toggle NERDTree
map <C-t> :NERDTreeToggle<CR>



" Map the <Space> key to toggle a selected fold opened/closed.
 nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
 vnoremap <Space> zf



"GoYCM
" fun! GoYCM()
"     nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
"     nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
"     nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
" endfun
 
 
 " GoCoc
 
 fun! GoCoc()
 	inoremap <buffer> <silent><expr> <TAB>
 		\ pumvisible() ? "\<C-n>" :
 		\ <SID>check_back_space() ? "\<TAB>" :
 		\ coc#refresh()
 	inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>" 
 	inoremap <buffer> <silent><expr> <C-space> coc#refresh()
 	
 	"GoTo code
 	nmap <buffer> <leader>gd <Plug>(coc-definition)
 	nmap <buffer> <leader>gy <Plug>(coc-type-difinition)
 	nmap <buffer> <leader>gi <Plug>(coc-implememtation)
 	nmap <buffer> <leader>gr <Plug>(coc-references)
 	nnoremap <buffer> <leader>cr :CocRestart 
 endfun
 
 
 










 "


 " END OF MY Custom 11 July 2020

fun! TrimWhitespace()

    let l:save = winsaveview()

    keeppatterns %s/\s\+$//e

    call winrestview(l:save)

endfun



augroup highlight_yank

    autocmd!

    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 50)

augroup END




augroup FAROOK
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()

 "   autocmd FileType typescript :call GoYCM()
    autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()

    autocmd CursorHold  * update
augroup END 

