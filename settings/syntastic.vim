if has("gui_running")
  let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
  " always show statusline
  set laststatus=2
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
let g:syntastic_always_populate_loc_list = 0

let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_javascript_jshint_args = "--config ~/.vim/syntax/jshintrc"
let g:syntastic_coffee_coffeelint_args = "--csv --file ~/.vim/syntax/coffeelint.json"

let jshint2_read = 0
let jshint2_save = 0

set runtimepath+=~/.vim/bundle/jshint2.vim/
