" last create .vimrc on sat 22 Feb 2021 
" code copy from youtube : https://www.youtube.com/watch?v=n9k9scbTuvQ&t=341s

" install Plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" make sure the above code is just in one line without (")
" toggle search hilight by press CTRL+c



source ~/.vim/vim-plug/plugins.vim
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

