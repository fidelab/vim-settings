## Fresh installation

**1.** Clone repository on ~/.vim

`git clone https://github.com/fidelab/vim-settings.git ~/.vim`

**2.** Set up Vundle

` $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

**3.** Launch vim and run `:PluginInstall`

## Dependencies

#### CoffeeLint

1. `npm install -g coffeelint`
2. Ensure you have your coffeelint config file on `~/.vim/syntax/coffeelint.json` or change the variable
`g:syntastic_coffee_coffeelint_args` to your current path:
3. Restart vim or run `:so ~/.vim/vimrc`

`let g:syntastic_coffee_coffeelint_args = "--csv --file ~/.vim/syntax/coffeelint.json"`

#### JSCS

1. `npm install jscs -g`
2. Move the file `.jscsrc` from the `syntax` folder to your home folder.
3. Change variable `g:syntastic_javascript_checkers = ['jshint']` to `let g:syntastic_javascript_checkers = ['jscs']` on your `vimrc` file.
4. Restart vim or run `:so ~/.vim/vimrc`

#### Instant Markdown

1. `npm -g install instant-markdown-d`
2. Ensure you have the line `filetype plugin on` in your `.vimrc`
3. Restart vim or run `:so ~/.vim/vimrc`

#### youAutocompleteMe (not used by default)
_if you want to use it, uncomment line `Plugin 'Valloric/YouCompleteMe` on `.vimrc` and comment line `Plugin 'ervandew/supertab'`_

**1.** Ensure that your version of Vim is at least 7.3.584 and that it has support for python2 scripting.

**2.** `sudo apt-get install cmake` and `sudo apt-get install python-dev`

**3.**

    > cd ~
    > mkdir ycm_build
    > cd ycm_build
    > cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
    > make ycm_support_libs

**4.** All done!

## Updating plugins

Inside VIM:

`:so ~/.vim/vimrc` and then `:PluginUpdate` or `:PluginInstall!`

## Inserting new plugins

In file `vundles.vim`, insert plugin line like `Plugin github/route`

Inside VIM:

`:so ~/.vim/vimrc` and then `:PluginInstall`

## Plugins List

Check plugins section on `vundles.vim` file for an extended list and a little explanation for each one functionality.

+ [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
+ [bling/vim-airline](https://github.com/bling/vim-airline)
+ [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
+ [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
+ [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
+ [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
+ [ervandew/supertab](https://github.com/ervandew/supertab)
+ [mbbill/VimExplorer](https://github.com/mbbill/VimExplorer)
+ [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
+ [vim-scripts/greplace.vim](https://github.com/vim-scripts/greplace.vim)
+ [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
+ [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
+ [tpope/vim-surround](https://github.com/tpope/vim-surround)
+ [godlygeek/tabular](https://github.com/godlygeek/tabular)
+ [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
+ [mileszs/ack.vim](https://github.com/mileszs/ack.vim)
+ [tyok/nerdtree-ack](https://github.com/tyok/nerdtree-ack)
+ [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
+ [rstacruz/sparkup,{rtp:vim}](https://github.com/rstacruz/sparkup)
+ [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
+ [MarcWeber/vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
+ [tomtom/tlib_vim](https://github.com/tomtom/tlib_vim)
+ [garbas/vim-snipmate](https://github.com/garbas/vim-snipmate)
+ [honza/vim-snippets](https://github.com/honza/vim-snippets)
+ [majutsushi/tagbar](https://github.com/majutsushi/tagbar)
+ [lukaszkorecki/CoffeeTags](https://github.com/lukaszkorecki/CoffeeTags)
+ [scrooloose/syntastic](https://github.com/scrooloose/syntastic)
+ [Shutnik/jshint2.vim](https://github.com/Shutnik/jshint2.vim)
+ [othree/html5.vim](https://github.com/othree/html5.vim)
+ [vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby)
+ [tpope/vim-rails](https://github.com/tpope/vim-rails)
+ [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
+ [kchmck/vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
+ [digitaltoad/vim-jade](https://github.com/digitaltoad/vim-jade)
+ [groenewege/vim-less](https://github.com/groenewege/vim-less)
+ [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
+ [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
+ [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)
+ [nathanaelkane/vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
+ [suan/vim-instant-markdown](https://github.com/suan/vim-instant-markdown)
+ [Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat)
+ [elzr/vim-json](https://github.com/elzr/vim-json)
+ [xolox/vim-misc](https://github.com/xolox/vim-misc)
+ [xolox/vim-session](https://github.com/xolox/vim-session)
+ [mattn/webapi-vim](https://github.com/mattn/webapi-vim)
+ [mattn/gist-vim](https://github.com/mattn/gist-vim)
+ [rking/ag.vim](https://github.com/rking/ag.vim)
+ [AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)

