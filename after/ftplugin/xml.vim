"Turn off cursorline
setlocal synmaxcol=270
setlocal formatexpr=XmlPretty()

nnoremap <leader>! ggdf"$x:setf xml<CR>gql
