"set-directory
let g:vimpath=fnamemodify(resolve(expand('<sfile>:p')), ':h')

"source the vimrc in the current directory if it is there
if filereadable(getcwd() . "/.local.vimrc")
  execute ":source " . getcwd() . "/.local.vimrc"
endif

"autocmds
"
""remove white space on before buffer write
autocmd BufWritePre * :%s/\s\+$//e

"repeat command
nnoremap , @:

"remove-search-highlighting-on-enter
nnoremap <silent> <cr> :noh<cr><esc>

"jump-from-insert-mode-into-visual-selections
inoremap <c-v> <esc><c-v>

"exit-insert-mode
inoremap kj <esc>l
inoremap kk <esc>klk
inoremap jj <esc>jlj

"switch-;-to-acces-commandmode-without-shift
noremap ; :
noremap : ;

"write-to-file-and-leave-insert
inoremap qw <esc>:w<cr>``
nnoremap qw <esc>:w<cr>

"execute-shell-commands
nnoremap !! V:!bash<cr>
vnoremap !! :!bash<cr>
inoremap !! <esc>V:!bash<cr>

"paste-from-clipboard-requires-bash
nnoremap vv :r! clipboard<cr>

"sourcing after plugins
autocmd Filetype javascript :exec "source " vimpath . "/javascript.vim"
autocmd Filetype clojure    :exec "source " vimpath . "/clojure.vim"
exec "source " vimpath . "/edit.vim"
exec "source " vimpath . "/settings.vim"
exec "source " vimpath . "/completion.vim"
exec "source " vimpath . "/leader.vim"
exec "source " vimpath . "/window.vim"
exec "source " vimpath . "/movement.vim"
exec "source " vimpath . "/tabs.vim"
exec "source " vimpath . "/command.vim"
exec "source " vimpath . "/git.vim"
exec "source " vimpath . "/buffer.vim"
exec "source " vimpath . "/split.vim"
exec "source " vimpath . "/text.vim"
exec "source " vimpath . "/file.vim"
exec "source " vimpath . "/surround.vim"

"plugins
let g:move_key_modifier = 'c'
