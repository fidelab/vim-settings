" Make it beautiful - colors and fonts

if has("gui_running")
  colors desert
  au GUIEnter * winpos 0 0
  set lines=999 columns=999 " fullscreen mode - Linux
  set guioptions-=T  "remove toolbar
  set guioptions-=m  "remove menu bar
endif

" =============== THEME =================
syntax enable
colorscheme solarized
set background=dark

" =============== NO ERROR BELLS ============
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
