function! JscsFix()
  let l:winview = winsaveview()
  % ! jscs -x
  call winrestview(l:winview)
endfunction

command! JscsFix :call JscsFix()

