"contains the leader mappings. You should think of them as external commands or
"special features that out of the scope of basic editing

"line
nnoremap <leader>lw gqip

"gulp (could move to spacevim.javascript.vim
nnoremap <leader>gl :vsplit ~/.gulp.out<cr>:r!gulp lint<cr>
nnoremap <leader>gt :vsplit ~/.gulp.out<cr>:r!gulp test<cr>

"buffer
nnoremap <leader>bi ggVG=``

"tab
nnoremap <leader>te :tabedit 
nnoremap <leader>to :tabonly<cr>

"file
nnoremap <leader>fe :!chmod +x %<cr>

"search
nnoremap <leader>sg :!google 
nnoremap <leader>sd :!duckduckgo 

"paragraph
nnoremap <leader>pw vipJgqip

"vim
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
