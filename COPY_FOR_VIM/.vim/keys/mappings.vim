
map <leader>t :Lexplore<CR>


" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


"   new tab 
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>tn :tabnext<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>





" Use alt + hjkl to resize windows
"nnoremap <M-j>    :resize -2<CR>
"nnoremap <M-k>    :resize +2<CR>
"nnoremap <M-h>    :vertical resize -2<CR>
"nnoremap <M-l>    :vertical resize +2<CR>


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>

nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>

"nnoremap <leader>h :wincmd h<CR>
"
"nnoremap <leader>j :wincmd j<CR>
"
"nnoremap <leader>k :wincmd k<CR>
"
"nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <Leader>ps :Rg<SPACE>

nnoremap <C-p> :GFiles<CR>

nnoremap <Leader>pf :Files<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <Leader>+ :vertical resize +5<CR>

nnoremap <Leader>- :vertical resize -5<CR>

"nnoremap <Leader>rp :resize 100<CR>



" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"



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


" move visually select lines up or down
" from Nick Janetakis https://www.youtube.com/watch?v=gNyNm5DsQ88
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv




" vim TODO

"nmap <Leader>tu <Plug>BujoChecknormal
"
"nmap <Leader>th <Plug>BujoAddnormal




" GoTo code navigation.

"nmap <leader>gd <Plug>(coc-definition)
"
"nmap <leader>gy <Plug>(coc-type-definition)
"
"nmap <leader>gi <Plug>(coc-implementation)
"
"nmap <leader>gr <Plug>(coc-references)
"
"nmap <leader>rr <Plug>(coc-rename)
"
"nmap <leader>g[ <Plug>(coc-diagnostic-prev)
"
"nmap <leader>g] <Plug>(coc-diagnostic-next)
"
"nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
"
"nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)

nnoremap <leader>cr :CocRestart
nnoremap <leader>ct :CocCommand explorer --toggle<CR>



" Sweet Sweet FuGITive

nmap <leader>gh :diffget //3<CR>

nmap <leader>gu :diffget //2<CR>

nmap <leader>gs :G<CR>

inoremap <silent><expr> <C-space> coc#refresh()



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


nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>


" This is totally awesome - remap jj to escape in insert mode. You'll never type jj anyway, so it's great!

inoremap jj <Esc>



nnoremap JJJJ <Nop>

inoremap <C-c> <esc>
