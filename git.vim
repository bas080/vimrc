" requires fugitiver to work propertlu
" creates a leader mappings for the fugitive commands

"" add
nnoremap <leader>ga :silent !git add %<cr>:redraw!<cr>

"" remove
nnoremap <leader>gr :!git rm %<cr>

"" move
nnoremap <leader>gm :!git mv %<space>

"" diff
nnoremap <leader>gd :!git diff %<cr>

"" log
nnoremap <leader>gl :!git log %<cr>

""blame
nnoremap <leader>gb :!git blame %<cr>

"git: performed on repository

"" push
nnoremap <leader>gp :!git push<cr>

"" pull
nnoremap <leader>gpp :!git pull<cr>

"" status
nnoremap <leader>gs :!git status<cr>

"" commit
nnoremap <leader>gc :silent !git commit -m ""<left>

"" diff
nnoremap <leader>gdd :!git diff<cr>

"" diff --staged
nnoremap <leader>gdc :!git diff --staged<cr>

"" fetch
nnoremap <leader>gf :!git fetch<cr>

