
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


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" this plugin will not working unless you have run 
" 'npm install -g prettier'  or 'sudo npm install -g prettier ' in manjaro




"call vundle#end() " required
call plug#end()
