
"{{{ Mappings

" Open Url on this line with the browser \w
map <Leader>w :call Browser ()<CR>

" Open the Project Plugin <F2>
nnoremap <silent> <F2> :Project<CR>

" Open the Project Plugin
nnoremap <silent> <Leader>pal :Project .vimproject<CR>

" TODO Mode
nnoremap <silent> <Leader>todo :execute TodoListMode()<CR>

" Open the TagList Plugin <F3>
nnoremap <silent> <F3> :Tlist<CR>

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
"nnoremap <silent> <C-t> :tabnew<CR>

"toggle NERDTree press Control+t to toggle NERDTree
map <C-t> :NERDTreeToggle<CR>



nnoremap <leader>h :wincmd h<CR>

nnoremap <leader>j :wincmd j<CR>

nnoremap <leader>k :wincmd k<CR>

nnoremap <leader>l :wincmd l<CR>

"nnoremap <leader>u :UndotreeShow<CR>


nnoremap <Leader>+ :vertical resize +5<CR>

nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <Leader>rp :resize 100<CR>





" Rotate Color Scheme <F8>
" nnoremap <silent> <F8> :execute RotateColorTheme()<CR>

" DOS is for fools.
nnoremap <silent> <F9> :%s/$//g<CR>:%s// /g<CR>

" Paste Mode! Dang! <F8>
nnoremap <silent> <F8> :call Paste_on_off()<CR>


" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Edit gvimrc \gv
nnoremap <silent> <Leader>gv :tabnew<CR>:e ~/.gvimrc<CR>

" Up and down are more logical with g..
nnoremap <silent> k gk
nnoremap <silent> j gj
inoremap <silent> <Up> <Esc>gka
inoremap <silent> <Down> <Esc>gja

" Good call Benjie (r for i)
nnoremap <silent> <Home> i <Esc>r
nnoremap <silent> <End> a <Esc>r

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Space will toggle folds!
"nnoremap <space> za

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz



inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

" Swap ; and : Convenient.
" nochem not convenient, because you are going to use 10000 vims with 10000 users
"nnoremap ; :
"nnoremap : ;

" Fix email paragraphs
nnoremap <leader>par :%s/^>$//<CR>



" this key binding will not work if you don't have gvim install!                
" copy to system clipboard in Vitual Mode                                                                  
" to paste from system clipboard use Control+Shift+v                            
vmap <C-y> "+y                                                                  
" map key Control+y for copy from vim to system clipboard on 16-July-2020        
" IMPORTANT!! please Install GVim in order to make the above key binding work   
                                                                                 
                                                                                 
                                                                                 
" easy paste long text from clipboard                                           
nnoremap <leader>pp "+p 

nnoremap <leader>cr :CocRestart
nnoremap <leader>ct :CocCommand explorer --toggle<CR>

" show the buffers list
nnoremap <Leader>ll :ls<CR>




" open vertical split
nnoremap <Leader>vsp :vsp<CR>


" open horizontal split
nnoremap <Leader>sp :sp<CR>


" open fzf file finder
nnoremap <Leader>pf :Files<CR>

" new tab 
nnoremap <Leader>tt :tabnew<CR>

" next tab
nnoremap <Leader>tn :tabnext<CR>

" previous tab
nnoremap <Leader>tp :tabprev<CR>


" move visually select lines up or down
" from Nick Janetakis 4 Feb 2021
" https://www.youtube.com/watch?v=gNyNm5DsQ88
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

map <leader>t :Lexplore<CR>

" This is totally awesome - remap jj to escape in insert mode. You'll never type jj anyway, so it's great!
inoremap jj <Esc>

nnoremap JJJJ <Nop>



" Map the <Space> key to toggle a selected fold opened/closed.
" Last edit 3 Mar 2021
 nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
 vnoremap <Space> zf




