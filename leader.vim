" contains the leader mappings. You should think of them as external commands or
" special features that out of the scope of basic editing

" shell: opens a bash shell within the current shell
nnoremap <leader>s :!bash<cr>
nnoremap <leader>s :!gnome-session-quit --logout --no-prompt<cr>

" windows

"" close: closes the window you are pointing at
nnoremap <leader>wcj <c-w>j<c-w>c
nnoremap <leader>wck <c-w>k<c-w>c
nnoremap <leader>wch <c-w>h<c-w>c
nnoremap <leader>wcl <c-w>l<c-w>c

"windows-go:
nnoremap <leader>wgj <c-w>j
nnoremap <leader>wgk <c-w>k
nnoremap <leader>wgh <c-w>h
nnoremap <leader>wgl <c-w>l

"" split

""" vertically
nnoremap <leader>wsv :vsplit<cr>

""" horizontally
nnoremap <leader>wsh :split<cr>

" git: performed on current file

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

"" fetch
nnoremap <leader>gf :!git fetch<cr>

" buffer

"" indent: perform indentation on file
nnoremap <leader>bi ggVG=``

"remove-emptylines: remove white lines and
nnoremap <leader>bre :g/^\s*$/d<cr>

"remove-trailing-whitespace
nnoremap <leader>brtw :%s/\s\+$//<cr>

" tab

"" edit
nnoremap <leader>te :tabedit<space>

"" only
nnoremap <leader>to :tabonly<cr>

"" move
nnoremap <leader>tm :tabmove<space>

" file: current file

"" executable: make current file executable
nnoremap <leader>fe :!chmod +x %<cr>

"" spellingcheck
nnoremap <leader>fs :!aspell check %<cr>

"" diretory: change the buffer's directory to the current file's
nnoremap <leader>fd :lcd %:p:h<cr>:pwd<cr>

"search: requires bash scripts

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
nnoremap <leader>a :Ack<space>

" line

"" wrap
nnoremap <leader>lw gqip

" paragraph

"" wrap
nnoremap <leader>pw vipJgqip

" vim

"" edit: start editing the vimrc in a split
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

"" source: source the ~/.vimrc
nnoremap <leader>vs :source $MYVIMRC<cr>

"" local: source the .vim in the current directory
nnoremap <leader>vl :source .vim<cr>

"" directory: changes the directory to the vimpath
nnoremap <leader>vd :exec "lcd " . vimpath<cr>:pwd<cr>

" directory

"" files
nnoremap <leader>df :!ls -l<cr>

"" print: print the current directory
nnoremap <leader>dp :pwd<cr>

"" global: change all buffers directories to current file's
nnoremap <leader>dg :cd %:p:h<cr>:pwd<cr>

" split

"" vertically
nnoremap <leader>sv :vsplit<cr>

"" horizontally
nnoremap <leader>sh :split<cr>

"" local: change the buffer's directory to the current file's
nnoremap <leader>dl :lcd %:p:h<cr>:pwd<cr>
