



call plug#begin('~/.config/nvim/plugged') 

"Plug 'morhetz/gruvbox'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'junegunn/fzf.vim'



" hit gc to comment
Plug 'tpope/vim-commentary'



" multi cursor
Plug 'terryma/vim-multiple-cursors'


" auto pair
Plug 'jiangmiao/auto-pairs'


" html tag easy by emmet
Plug 'mattn/emmet-vim'

"	for neovim I will use this color scheme 18 Feb 2021
Plug 'nanotech/jellybeans.vim'


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" this plugin will not working unless you have run 
" 'npm install -g prettier'  or 'sudo npm install -g prettier ' in manjaro





call plug#end()


colorscheme jellybeans
