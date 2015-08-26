## Fresh installation

**1.** Clone repository on ~/.vim

`git clone https://github.com/fidelab/vim-settings.git`

**2.** Set up Vundle

` $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

**3.** Launch vim and run `:PluginInstall`

## Dependencies

#### youAutocompleteMe (not used by default) 
_if you want to use it, uncomment line `Plugin 'Valloric/YouCompleteMe` on `vimrc` and comment line `Plugin 'ervandew/supertab'`_

**1.** Ensure that your version of Vim is at least 7.3.584 and that it has support for python2 scripting.

**2.** `sudo apt-get install cmake` and `sudo apt-get install python-dev`

**3.**    
    
    > cd ~
    > mkdir ycm_build
    > cd ycm_build
    > cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    > make ycm_support_libs

**4.** All done!

#### Instant Markdown

1. `npm -g install instant-markdown-d`

2. Ensure you have the line `filetype plugin on` in your `.vimrc`

## Updating plugins

Inside VIM:

`:source %` and then `:PluginUpdate` or `:PluginInstall!`

## Inserting new plugins

In vimrc, insert plugin line like `Plugin github/route`

Inside VIM: 

`:source %` and then `:PluginInstall`

## Plugins List

+ VundleVim/Vundle.vim
+ bling/vim-airline
+ tpope/vim-fugitive
+ scrooloose/nerdtree
+ jistr/vim-nerdtree-tabs
+ Valloric/YouCompleteMe
+ ervandew/supertab
+ mbbill/VimExplorer
+ kien/ctrlp.vim
+ vim-scripts/greplace.vim
+ scrooloose/nerdcommenter
+ tpope/vim-repeat
+ tpope/vim-surround
+ godlygeek/tabular
+ terryma/vim-multiple-cursors
+ mileszs/ack.vim
+ tyok/nerdtree-ack
+ Lokaltog/vim-easymotion
+ rstacruz/sparkup, {rtp: vim}
+ Raimondi/delimitMate
+ MarcWeber/vim-addon-mw-utils
+ tomtom/tlib_vim
+ garbas/vim-snipmate
+ honza/vim-snippets
+ majutsushi/tagbar
+ lukaszkorecki/CoffeeTags
+ scrooloose/syntastic
+ Shutnik/jshint2.vim
+ othree/html5.vim
+ vim-ruby/vim-ruby
+ tpope/vim-rails
+ pangloss/vim-javascript
+ kchmck/vim-coffee-script
+ digitaltoad/vim-jade
+ groenewege/vim-less
+ airblade/vim-gitgutter
+ altercation/vim-colors-solarized
+ plasticboy/vim-markdown
+ nathanaelkane/vim-indent-guides
+ suan/vim-instant-markdown
