
call plug#begin('~/.vim/plugged')



Plug 'neoclide/coc.nvim', {'branch': 'release'}

"   let not use YouCompleteMe this time
"Plug 'ycm-core/YouCompleteMe'


" SuperTap 14-Sep-2019
Plug 'ervandew/supertab'


Plug 'tweekmonster/gofmt.vim'

Plug 'tpope/vim-fugitive'


" SuperTap 14-Sep-2019
Plug 'ervandew/supertab'

Plug 'vim-utils/vim-man'

Plug 'mbbill/undotree'

Plug 'sheerun/vim-polyglot'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

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

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" this plugin will not working unless you have run 
" 'npm install -g prettier'  or 'sudo npm install -g prettier ' in manjaro



call plug#end()



colorscheme gruvbox
set background=dark

