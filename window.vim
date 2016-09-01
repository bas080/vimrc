"switching-between-windows
nnoremap <c-j> <c-w><c-w>
nnoremap <c-k> <c-w>W

"resizing windows
nnoremap <c-h> :vertical resize -3<cr>
nnoremap <c-l> :vertical resize +3<cr>
nnoremap <NUL> :only<cr>

"switching-between-splits: resize-split-to-80
" autocmd WinEnter * execute ":normal! \<c-w>88|"
" autocmd FocusGained,BufEnter * :silent! !
