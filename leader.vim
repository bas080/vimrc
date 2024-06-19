"paste from system clipboard
nnoremap <leader>p :r! clipboard<cr>
vnoremap <leader>p x:r! clipboard<cr>

"yank to system clipboard
nmap <leader>y V<leader>y
vnoremap <leader>y :!cat - <bar> clipboard<cr>u
