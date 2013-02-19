" vim: set expandtab ft=vim shiftwidth=2

if &cp || exists("g:loaded_guizoom") | finish | endif
let g:loaded_guizoom = 1

let s:save_cpo = &cpo
set cpo&vim

" save default value
let s:currentFont = &guifont

" save current window size
let s:currentWindowSize = [&lines, &columns]

" keep track of last window size
autocmd VimResized * let s:currentWindowSize = [&lines, &columns]

" command
com! -narg=0 ZoomIn :call s:Zoom(1)
com! -narg=0 ZoomOut :call s:Zoom(-1)
com! -narg=0 ZoomReset :call s:ZoomReset()

" Zooming function
function! s:Zoom(amount)
  " regex to get current font
  let l:fsRegex = ':h\([^:]*\)'

  " get actual font size
  let l:fontSize = substitute(&guifont, '^.*' . l:fsRegex . '.*$', '\1', '')

  " increase or decrease font size
  let l:fontSize += a:amount

  " set new font size
  let &guifont = substitute(&guifont, l:fsRegex, ':h' . l:fontSize, '')
endfunction

" reset font size
function! s:ZoomReset()
  " restore font size
  let &guifont = s:currentFont

  " restore window size
  if has("gui_running")
    let &lines = s:currentWindowSize[0]
    let &columns = s:currentWindowSize[1]
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
finish
