"don't insert comment leaders automatically
setlocal formatoptions-=c
setlocal formatoptions-=r
setlocal formatoptions-=o

function! EclimJavaFormat()
  let l:endline = v:lnum + v:count - 1
  echom v:lnum
  echom v:count
  echom l:endline
  echom v:lnum . "," . l:endline . "JavaFormat" 
  exe v:lnum . "," . l:endline . "JavaFormat"
endfunction

setlocal formatexpr=EclimJavaFormat()

hi link javaStorageClass statement
hi link Exception statement
hi link typedef statement

nnoremap ,< ea><ESC>bi<<ESC>i

"convert a variable access to an object getter call.
nnoremap <leader>jg ea()<ESC>bbgUli.get<ESC>F.i
" Surround the current visual selection with a try/catch block
vnoremap <silent> <leader>jt >><ESC>'<Otry {<ESC>'>o} catch () {<CR>}<ESC>k2wa
