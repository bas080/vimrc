"" indent: perform indentation on file
nnoremap <leader>bi ggVG=``

"remove-emptylines: remove white lines and
nnoremap <leader>bre :g/^\s*$/d<cr>

"remove-trailing-whitespace
nnoremap <leader>brtw :%s/\s\+$//<cr>

"" spellingcheck
nnoremap <leader>fs :!aspell check %<cr>

"search-google
nnoremap <leader>sg :!google<space>

"search-duckduckgo
nnoremap <leader>sd :!duckduckgo<space>

"search-files: does a grep and opens results in a new shell with vim
nnoremap <leader>sf :!grim<space>

" web: requires bash scripts

"" google
nnoremap <leader>wg :!google

"" duckduckgo
nnoremap <leader>wd :!duckduckgo

" ack: requires vim ack
nnoremap <leader>a :Ack!<space>
vnoremap <leader>a y:Ack! <c-r>=fnameescape(@")<cr><cr>
