call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Any valid git URL is allowed

" Multiple Plug commands can be written in a single line using | separators


" Plugin outside ~/.vim/plugged with post-update hook

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

" show git on status line
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" jellybeans my belove color
Plug 'nanotech/jellybeans.vim'


" show status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Powerline
Plug 'Lokaltog/vim-powerline'

" Powerlevel 
Plug 'romkatv/powerlevel10k'

" html tag easy by emmet
Plug 'mattn/emmet-vim'

" auto pair
Plug 'jiangmiao/auto-pairs'

" multi cursor
Plug 'terryma/vim-multiple-cursors'


" setup for typescript 24 Aug 2022
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'


" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
