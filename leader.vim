"contains the leader mappings. You should think of them as external commands or
"special features that out of the scope of basic editing

"shell: opens a bash shell within the current shell
nnoremap <leader>s :!bash<cr>

"windows

"windows-close: closes the window you are pointing at
nnoremap <leader>wcj <c-w>j<c-w>c
nnoremap <leader>wck <c-w>k<c-w>c
nnoremap <leader>wch <c-w>h<c-w>c
nnoremap <leader>wcl <c-w>l<c-w>c

"windows-go: 
nnoremap <leader>wgj <c-w>j
nnoremap <leader>wgk <c-w>k
nnoremap <leader>wgh <c-w>h
nnoremap <leader>wgl <c-w>l

"git: performed on current file

"git-add
nnoremap <leader>ga :!git add %<cr>

"git-remove
nnoremap <leader>gr :!git rm %<cr>

"git-move
nnoremap <leader>gm :!git mv % 

"git-diff
nnoremap <leader>gd :!git diff %<cr>

"git-log
nnoremap <leader>gl :!git log %<cr>

"git: performed on repository

"git push
nnoremap <leader>gp :!git push<cr>

"git pull
nnoremap <leader>gpp :!git pull<cr>

"git-status
nnoremap <leader>gs :!git status<cr>

"git-commit
nnoremap <leader>gc :!git commit -m "

"git-diff
nnoremap <leader>gdd :!git diff<cr>

"git-fetch
nnoremap <leader>gf :!git fetch<cr>

"buffer

"buffer-indent: perform indentation on file
nnoremap <leader>bi ggVG=``

"tab

"tab-edit
nnoremap <leader>te :tabedit 

"tab-only
nnoremap <leader>to :tabonly<cr>

"file: current file

"file-executable: make current file executable
nnoremap <leader>fe :!chmod +x %<cr>

"search: requires bash scripts

"search-google
nnoremap <leader>sg :!google 

"search-duckduckgo
nnoremap <leader>sd :!duckduckgo 

"search-files: does a grep and opens results in a new shell with vim
nnoremap <leader>sf :!grim 

"ack
nnoremap <leader>a :Ack 

"line

"line-wrap
nnoremap <leader>lw gqip

"paragraph

"paragraph-wrap
nnoremap <leader>pw vipJgqip

"vim

"vimrc-edit: start editing the vimrc in a split
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

"vimrc-source: source the ~/.vimrc
nnoremap <leader>vs :source $MYVIMRC<cr>

"vimrc-local: source the .vim in the current directory
nnoremap <leader>vl :source .vim<cr>

"vimstinct-directory: does it only for the (local)buffer
nnoremap <leader>vd :exec "lcd " . vimpath<cr>:pwd<cr>

"directory

"directory-files
nnoremap <leader>df :!ls -l<cr>

"directory-print: print the current directory
nnoremap <leader>dp :pwd<cr>

"directory-global: change all buffers directories to current file's
nnoremap <leader>dg :cd %:p:h<cr>:pwd<cr>

"directory-local: change the buffer's directory to the current file's
nnoremap <leader>dl :lcd %:p:h<cr>:pwd<cr>

"split

"split-vertically
nnoremap <leader>sv :vsplit<cr>

"split-horizontally
nnoremap <leader>sh :split<cr>
