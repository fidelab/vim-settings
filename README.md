Plugins
=======

* Pathogen
    * http://www.vim.org/scripts/script.php?script_id=2332
    * https://github.com/tpope/vim-pathogen

* NERDTree

    * https://github.com/scrooloose/nerdtree

* CtrlP

    * http://www.vim.org/scripts/script.php?script_id=3736
    * http://kien.github.com/ctrlp.vim/
    * https://github.com/kien/ctrlp.vim

* Command-T (requires Ruby) ** too slow **

    * https://wincent.com/products/command-t
    * https://github.com/wincent/Command-T


* Syntastic (syntax checker)

    * http://www.vim.org/scripts/script.php?script_id=2736
    * https://github.com/scrooloose/syntastic
    * Requires:
        * jslint
        * csslint
        * coffeelint

* Supertab
    * http://www.vim.org/scripts/script.php?script_id=1643
    * https://github.com/ervandew/supertab

* VimExplorer
    * http://www.vim.org/scripts/script.php?script_id=1950
    * https://github.com/mbbill/VimExplorer

* vim-surround
    * https://github.com/tpope/vim-surround

* vim-repeat (required for vim-sorround to repeat commands with '.')
    * https://github.com/tpope/vim-repeat

* Tabularize
    * https://github.com/godlygeek/tabular
    * https://gist.github.com/287147

* NERDCommenter
    * https://github.com/scrooloose/nerdcommenter.git

* powerline
    * https://github.com/Lokaltog/powerline
    * Fonts setup
        # cp .vim/bundle/powerline/font/PowerlineSymbols.otf .fonts/
        # cp .vim/bundle/powerline/font/10-powerline-symbols.conf .config/fontconfig/conf.d/

* ack
    * https://github.com/mileszs/ack.vim 

* nerdtree-ack
    * https://github.com/tyok/nerdtree-ack
    
* greplace
    * https://github.com/skwp/greplace.vim 

* tagbar
    * http://majutsushi.github.io/tagbar/ 
    * Ctags:
        # sudo apt-get install ctags
        # ln -s .vim/other/ctags ~/.ctags

* CoffeeTags
    * https://github.com/lukaszkorecki/CoffeeTags
    * Setup:
        # sudo gem install CoffeeTags

Updating plugins
================

When you attach a module, it gets attach to the exact commit it currently has, so I have to update them from time to time:

    git submodule -q foreach git pull -q origin master
    
And then commit changes to the repository.

Fresh installation
==================

Clone submodule repositories
    git submodule init
    git submodule update

And inside vi
    :BundleInstall

