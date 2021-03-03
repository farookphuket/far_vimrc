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





"Functions

" Open URL in browser

function! Browser ()
    let line = getline (".")
    let line = matchstr (line, "http[^ ]*")
    exec "!konqueror ".line
endfunction


" Theme Rotating
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
" 

" Paste Toggle
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
"

" Todo List Mode

function! TodoListMode()
    e ~/.todo.otl
    Calendar
    wincmd l
    set foldlevel=1
    tabnew ~/.notes.txt
    tabfirst
    " or 'norm! zMzr'
endfunction


source $HOME/.vim/vim-plug/plugins.vim
source $HOME/.vim/settings/general.vim
source $HOME/.vim/keys/mappings.vim



" Map the <Space> key to toggle a selected fold opened/closed.
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" vnoremap <Space> zf
