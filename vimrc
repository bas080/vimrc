""remove white space on before buffer write
autocmd BufWritePre * :%s/\s\+$//e

"repeat last run command
nnoremap , @:

let g:ctrlp_cmd = 'CtrlPMixed'

" run using bash
nmap <bar> V<bar><cr>
vnoremap <bar> :!bash<cr>

" run prettier on files (consider writting a meta prettier tool)
nmap \ V\
vnoremap \ :!prettier --stdin-filepath %<cr>

"remove-search-highlighting-on-enter
nnoremap <silent> <cr> :noh<cr><esc>

"jump-from-insert-mode-into-visual-selections
inoremap <c-v> <esc><c-v>

"exit-insert-mode
inoremap Kj <esc>l
inoremap KJ <esc>l
inoremap kj <esc>l
inoremap jj <esc>lj
inoremap kk <esc>lk
inoremap <esc> <nop>

" Map moving up/down in completion
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-x>\<C-u>"

"squash lines into one
vnoremap <enter> J
vnoremap <space> J

"switch-;-to-acces-commandmode-without-shift
noremap ; :
noremap : ;

"write-to-file-and-leave-insert
inoremap qw <esc>:w<cr>``
nnoremap qw <esc>:w<cr>

"shift-u-for-redu
nnoremap U <C-r>
nnoremap <c-r> :echom "HINT: <c-r> to redo was re-mapped to `U"<cr>

"autocmds
let g:vimpath=fnamemodify(resolve(expand('<sfile>:p')), ':h')

"sourcing after plugins
exec "source " vimpath . "/edit.vim"
exec "source " vimpath . "/settings.vim"
exec "source " vimpath . "/completion.vim"
exec "source " vimpath . "/leader.vim"
exec "source " vimpath . "/movement.vim"
exec "source " vimpath . "/tabs.vim"
exec "source " vimpath . "/command.vim"
exec "source " vimpath . "/git.vim"
exec "source " vimpath . "/buffer.vim"
exec "source " vimpath . "/split.vim"
exec "source " vimpath . "/file.vim"
exec "source " vimpath . "/surround.vim"
exec "source " vimpath . "/history.vim"

"plugins
let g:move_key_modifier = 'c'
