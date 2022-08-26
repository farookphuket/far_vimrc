
"nnoremap <Leader>pf :Files<CR> set Spacebar key as the leader key
let mapleader = " "


" =============================================================================
" ===============                File START               =====================
" =============================================================================
nnoremap <Leader>f :Files<CR>

" open Lexplore 
nnoremap <leader>t :Ex<CR>

" =============================================================================
" ===============                File END                 =====================
" =============================================================================




" =============================================================================
" ================              TAB START               =======================
" =============================================================================

" open new tab
nnoremap <leader>tn :tabnew<CR>

" next tab
nnoremap <leader><TAB>n :tabnext<CR>

" previous tab
nnoremap <leader><TAB>p :tabprevious<CR>

" go to the first tab 
nnoremap <leader><TAB>f :tabfirst<CR>

" go to last tab 
nnoremap <leader><TAB>l :tablast<CR>



" =============================================================================
" =================                  TAB END            =======================
" =============================================================================


" =============================================================================
" =================                  BUFFER  START             ================
" =============================================================================

" go to next buffer 
nnoremap <leader>bn :bnext<CR>

" go to previous buffer 
nnoremap <leader>bp :bprevious<CR>

" go to first buffer 
nnoremap <leader>bf :bfirst<CR>

" go to last buffer 
nnoremap <leader>bl :blast<CR>
 

" close one buffer
nnoremap <leader>c :bd!<CR>

" save all and exit vim 
nnoremap <leader>Q :xa<CR>

" =============================================================================
" =================                  BUFFER  END               ================
" =============================================================================

" =============================================================================
" =================             SPLIT WINDOW START             ================
" =============================================================================

" press Spacebar| (pipe symbol) for vsplit
nnoremap <leader>\| :vsplit<CR>

" press Spacebar- (minus symbol) for split
nnoremap <leader>- :split<CR>

" =============================================================================
" =================             SPLIT WINDOW END             ==================
" =============================================================================


" list the buffer all 
nnoremap <leader>ll :ls<CR>

" this key binding will not work if you don't have gvim install!
" copy to system clipboard in Vitual Mode
" to paste from system clipboard use Control+Shift+v
vmap <C-y> "+y
"map key Control+y for copy from vim to system clipboard on 16-July-2020
" IMPORTANT!! please Install GVim in order to make the above key binding work



" easy paste long text from clipboard
nnoremap <leader>pp "+p


" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf





" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" move visually select lines up or down
" from Nick Janetakis https://www.youtube.com/watch?v=gNyNm5DsQ88
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv


nnoremap <leader>cr :CocRestart
nnoremap <leader>e :CocCommand explorer --toggle<CR>

" refresh source
nnoremap <leader><CR> :so ~/.vimrc<CR>
