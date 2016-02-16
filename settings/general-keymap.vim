" ================= Vim settings commands ==========
map <C-V><Enter> :source $MYVIMRC<CR>
map <C-V><C-Enter> :tabedit $MYVIMRC<CR>

" ================== Tabs ==========================
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap tc  :tabclose<CR>
nnoremap tn  :tabnew<CR>
nnoremap te  <C-W>T

" Move between windows with ctrl + movement keys
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" move up/down quickly by using Alt-j, Alt-k
" which will move us around by functions
nnoremap <silent> <A-j> }
nnoremap <silent> <A-k> {
autocmd FileType javascript map <buffer> <A-k> }
autocmd FileType javascript map <buffer> <A-j> {

" ================== Search ===================
" toggle highlighting matches
nnoremap <F3> :set hlsearch! <CR> 
" clear last search
nnoremap <F4> :let @/ = "" <CR> 
map <F9> :nohlsearch <CR>
map <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <2-LeftMouse> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" Paste mode toggle
nmap <silent> <leader>p :set paste!<CR>

" After shifting a visual block, reselect it to be able to shift again
vnoremap > >gv
vnoremap < <gv

" ==================== Folders ==========================
" Enable folding with the spacebar
nnoremap <space> za
vnoremap <space> zf

" ==================== Indentation ======================
" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" ==================== Autoformat =======================
noremap <F5> :Autoformat <CR>

" ==================== NERDTree =======================
map <F1> :NERDTreeTabsToggle<CR>

" ==================== VIM ============================
"(v)im (r)eload
nmap <silent> ,vr :so ~/.vim/vimrc<CR>

" ==================== Add carriage return after brackets ======
imap <C-Return> <CR><CR><C-o>k<C-t>
"inoremap {<CR> {<CR>}<C-o>O
