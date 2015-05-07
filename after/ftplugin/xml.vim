"Turn off cursorline
setlocal synmaxcol=270
setlocal formatprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
nnoremap <leader>! ggdf"$x:setf xml<CR>gql
