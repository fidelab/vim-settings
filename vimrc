" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =================== GENERAL CONFIG ===================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
"set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ===== encoding =====
set encoding=utf8
set ffs=unix,dos,mac

" ================ Swap Files ======================

"set nobackup       "no backup files
"set nowritebackup  "only in case you don't want a backup file while editing
"set noswapfile     "no swap files
"set nowb
set backupdir=/tmp
set dir=/tmp

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set mouse=a
set showmatch  " Show matching bracets when text indicator is over them

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set foldlevelstart=99  " initially open all folds
"set nofoldenable        "dont fold by default

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Editing ===========================

set clipboard+=unnamed " Yanks go on clipboard instead.

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" ================ Custom Settings ========================
so ~/.vim/settings.vim

" ================ Local Vimrc ========================
" Use local vimrc if available
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

