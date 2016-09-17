"set-directory
let g:vimpath=fnamemodify(resolve(expand('<sfile>:p')), ':h')

"source the vimrc in the current directory if it is there
if filereadable(getcwd() . "/.vim")
  execute ":source " . getcwd() . "/.vim"
endif

"autocmds
"
""remove white space on before buffer write
autocmd BufWritePre * :%s/\s\+$//e

"repeat command
nnoremap , @:

"sourcing
autocmd Filetype javascript :exec "source " vimpath . "/javascript.vim"
exec "source " vimpath . "/settings.vim"
exec "source " vimpath . "/completion.vim"
exec "source " vimpath . "/leader.vim"
exec "source " vimpath . "/window.vim"
exec "source " vimpath . "/movement.vim"

"remove-search-highlighting-on-enter
nnoremap <silent> <cr> :noh<cr><esc>

"jump-from-insert-mode-into-visual-selections
inoremap <c-v> <esc><c-v>

"exit-insert-mode
inoremap kj <esc>l
inoremap kk <esc>kl
inoremap jj <esc>jl

"switch-;-to-acces-commandmode-without-shift
noremap ; :
noremap : ;

"write-to-file-and-leave-insert
inoremap qw <esc>:w<cr>``
nnoremap qw <esc>:w<cr>

"execute-shell-commands
nnoremap !! V:!sh<cr>
vnoremap !! :!sh<cr>
inoremap !! <esc>V:!sh<cr>

"no-need-to-press-shift-to-jump-back-a-tab
nnoremap gb gT

"move one line up or down
nnoremap <a-j> :m .+1<CR>==
nnoremap <a-k> :m .-2<CR>==
inoremap <a-j> <Esc>:m .+1<CR>==gi
inoremap <a-k> <Esc>:m .-2<CR>==gi
vnoremap <a-j> :m '>+1<CR>gv=gv
vnoremap <a-k> :m '<-2<CR>gv=gv

"paste-from-clipboard-requires-bash
nnoremap vv :r! clipboard<cr>

"pathogen
execute pathogen#infect()

"background
set background=dark

"colorscheme
colorscheme 256_noir
