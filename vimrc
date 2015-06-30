" ===== gui =====
if has("gui_running")
   colors desert
   "colorscheme wombat
   "au GUIEnter * simalt ~x " fullscreen mode - Windows
   au GUIEnter * winpos 0 0 
   set lines=999 columns=999 " fullscreen mode - Linux
   set guioptions-=T  "remove toolbar
   set guioptions-=m  "remove menu bar
endif

" ===== editing =====
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set mouse=a
set nowrap
set showmatch  " Show matching bracets when text indicator is over them

"set nobackup       "no backup files
"set nowritebackup  "only in case you don't want a backup file while editing
"set noswapfile     "no swap files
set backupdir=/tmp
set dir=/tmp

set clipboard+=unnamed " Yanks go on clipboard instead.

:let mapleader = ","

" Paste mode toggle
nmap <silent> <leader>p :set paste!<CR>

" After shifting a visual block, reselect it to be able to shift again
vnoremap > >gv
vnoremap < <gv

" ===== folds =====
set foldlevelstart=99  " initially open all folds
"set nofoldenable  " disable folding

" Enable folding with the spacebar
nnoremap <space> za
vnoremap <space> zf

" ===== colors =====
set number
highlight LineNr ctermfg=grey ctermbg=black 
highlight LineNr guibg=black guifg=grey
"set fillchars=stl:-,stlnc:-,vert:│

" ===== search =====
set hlsearch
set incsearch
set smartcase "does case-insensitive searches only when all letters are lowercase
" toggle highlighting matches
nnoremap <F3> :set hlsearch!<CR>
" clear last search
nnoremap <F4> :let @/ = ""<CR>
nmap <leader>t :CtrlP<CR>
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
map <F9> :nohlsearch<CR>
map <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
map <2-LeftMouse> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" ===== encoding =====
set encoding=utf8
set ffs=unix,dos,mac

" ===== syntax =====
set nocompatible 
filetype plugin on
filetype indent on
set autoindent " Copy indent from the row above
set smartindent
syntax on

" ===== plugins =====
call pathogen#infect()

" ===== vundle =====
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'ervandew/supertab'
Bundle 'mbbill/VimExplorer'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/greplace.vim'

Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'mileszs/ack.vim'
Bundle 'tyok/nerdtree-ack'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
Bundle 'Raimondi/delimitMate'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'majutsushi/tagbar'
Bundle 'lukaszkorecki/CoffeeTags'

Bundle 'scrooloose/syntastic'
Bundle 'othree/html5.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'

filetype plugin indent on

" ===== vim settings commands =====
map <C-V><Enter> :source $MYVIMRC<CR>
map <C-V><C-Enter> :tabedit $MYVIMRC<CR>

" ===== tabs =====
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

" ===== tabs =====
" Move between windows with ctrl + movement keys
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" ===== ctrlp =====
set wildignore+=*/build/*,*/bin/*,*/tmp/*,*.so,*.swp,*.zip

" ===== NERDTree =====
let g:nerdtree_tabs_synchronize_view=0
let g:nerdtree_tabs_synchronize_focus=0
map <F1> :NERDTreeTabsToggle<CR>

" ===== Tabularize - autotab when using this syntax =====
" | Col1  | Col2  | Col3  |
" | dato1 | dato2 | dato3 |
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
nnoremap <Bar><Bar> :call <SID>align()<CR>
 
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" ===== vim-multiple-cursors =====
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" ===== easy-motion =====
let g:EasyMotion_leader_key = '-'

" ===== vim-snippets =====
let g:snippets_dir = ''

" ===== vim-snippets =====
nmap <F8> :TagbarToggle<CR>

" ===== language specific settings =====
compiler ruby

autocmd FileType jade set softtabstop=2
autocmd FileType jade set tabstop=2
autocmd FileType jade set shiftwidth=2
autocmd FileType coffee set softtabstop=2
autocmd FileType coffee set tabstop=2
autocmd FileType coffee set shiftwidth=2
autocmd FileType ruby set softtabstop=2
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType markdown set softtabstop=4
autocmd FileType markdown set tabstop=4
autocmd FileType markdown set shiftwidth=4

" markdown
autocmd! BufNewFile,BufRead *.md setlocal filetype=markdown

" Arduino
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

" ===== jshint ====
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_javascript_jshint_args = "--config ~/.vim/syntax/jshintrc"
let g:syntastic_coffee_coffeelint_args = "--csv --file ~/.vim/syntax/coffeelint.json"

" ===== Hardcore mode =====
"inoremap  <Up>     <NOP>
"inoremap  <Down>   <NOP>
"inoremap  <Left>   <NOP>
"inoremap  <Right>  <NOP>
"noremap   <Up>     <NOP>
"noremap   <Down>   <NOP>
"noremap   <Left>   <NOP>
"noremap   <Right>  <NOP>

if has("gui_running")
   let g:airline_powerline_fonts = 1
   if !exists('g:airline_symbols')
      let g:airline_symbols = {}
   endif
   let g:airline_symbols.space = "\ua0"
   " always show statusline
   set laststatus=2
endif

" Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }

" ==== Show Hidden Files NerdTree =====
let NERDTreeShowHidden=1

" ==== JSHint ===== "
set runtimepath+=~/.vim/bundle/jshint2.vim/
