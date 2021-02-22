" last create .vimrc on sat 22 Feb 2021 
" code copy from youtube : https://www.youtube.com/watch?v=n9k9scbTuvQ&t=341s

" install Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" make sure the above code is just in one line without (")
" toggle search hilight by press CTRL+c






call plug#begin('~/.vim/plugged')



Plug 'neoclide/coc.nvim', {'branch': 'release'}

"   let not use YouCompleteMe this time
"Plug 'ycm-core/YouCompleteMe'

Plug 'tweekmonster/gofmt.vim'

Plug 'tpope/vim-fugitive'

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





call plug#end()




let g:gruvbox_contrast_dark = 'hard'

if exists('+termguicolors')

    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

endif

let g:gruvbox_invert_selection='0'


source ~/.vim/settings/general.vim
source ~/.vim/keys/mappings.vim







if executable('rg')

    let g:rg_derive_root='true'

endif








function! s:check_back_space() abort

    let col = col('.') - 1

    return !col || getline('.')[col - 1]  =~# '\s'

endfunction



command! -nargs=0 Prettier :CocCommand prettier.formatFile


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
    autocmd FileType cpp,cxx,h,hpp,c,php,txt,html :call GoCoc()

    autocmd CursorHold  * update
augroup END

