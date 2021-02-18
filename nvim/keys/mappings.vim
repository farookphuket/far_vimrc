" set Spacebar key as the leader key
let mapleader = " "

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da



" open lexplore
let g:netrw_browse_split = 4
let g:netrw_banner = 0
let g:netrw_winsize = 22
map <leader>t :Lexplore<CR>


" open fzf file
nnoremap <Leader>pf :Files<CR>


" open new tab
nnoremap <Leader>tt :tabnew<CR>

" tabprev
nnoremap <Leader>tp :tabprev<CR>

" tabnext
nnoremap <Leader>tn :tabnext<CR>

" show the buffers list
nnoremap <Leader>ll :ls<CR>

nnoremap <leader>cr :CocRestart
nnoremap <leader>ct :CocCommand explorer --toggle<CR>





" Map the <Space> key to toggle a selected fold opened/closed.
 nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
 vnoremap <Space> zf



" this key binding will not work if you don't have gvim install!
" copy to system clipboard in Vitual Mode
" to paste from system clipboard use Control+Shift+v
vmap <C-y> "+y
"map key Control+y for copy from vim to system clipboard on 16-July-2020



" easy paste long text from clipboard
nnoremap <leader>pp "+p



"   copy the setup from this page 19-Feb-2021
"   https://medium.com/vim-drops/be-a-html-ninja-with-emmet-for-vim-feee15447ef1
let g:user_emmet_leader_key=','
