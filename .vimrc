" private vimrc

  source ~/.pvimrc

" settings

  syntax on
  set autoread
  set hlsearch
  set nowrap
  set nolinebreak
  set autoindent
  set cc=+1
  set cursorline
  set expandtab
  set foldmethod=indent
  set list listchars=tab:»·,trail:·
  set listchars=tab:>-,trail:·
  set nocompatible
  set noswapfile
  set number
  set numberwidth=1
  set relativenumber
  set shiftwidth=2
  set so=1000
  set tabstop=2
  set textwidth=80
  set colorcolumn=0
  set dictionary+=/usr/share/dict/words
  filetype plugin indent on
  let mapleader = "	"

" global

  " highlight the 80th column

  highlight ColorColumn ctermbg=magenta
  call matchadd('ColorColumn' , '\%81v', 100)

  " remove search highlighting

  nnoremap <silent> <cr> :noh<cr><esc>

  " access mappings quicker without leaving home

  nnoremap f `

  " jump from insert mode into visual selections

  inoremap <c-v> <esc>l<c-v>

  " autocompletion without ctrl

  inoremap xd <c-x><c-d>
  inoremap xf <c-x><c-f>
  inoremap xi <c-x><c-i>
  inoremap xk <c-x><c-k>
  inoremap xl <c-x><c-l>
  inoremap xn <c-x><c-n>
  inoremap xp <c-x><c-p>
  inoremap xv <c-x><c-v>
  inoremap xy <c-x><c-y>

  " disabled because are annoying
  " inoremap xe <c-x><c-e>
  " inoremap xo <c-x><c-o>
  " inoremap xu <c-x><c-u>

  " exit insert mode

  inoremap kj <esc>l
  inoremap kk <esc>kl
  inoremap jj <esc>jl

  " switching between splits

  autocmd WinEnter * execute ":normal! \<c-w>84|"
  autocmd FocusGained,BufEnter * :silent! !

  nnoremap <c-w> :echom "Use <c-hjkl> instead"<cr>
  nnoremap <c-j>  <c-w>j
  nnoremap <c-k>  <c-w>k
  nnoremap <c-h>  <c-w>h
  nnoremap <c-l>  <c-w>l

  " close/hide split

  nnoremap d<c-j> <c-w>j<c-w>c
  nnoremap d<c-k> <c-w>k<c-w>c
  nnoremap d<c-h> <c-w>h<c-w>c
  nnoremap d<c-l> <c-w>l<c-w>c
  noremap ; :
  noremap : ;

  " fold

  vnoremap f :<c-u>silent! normal! [zV]z<cr>
  omap f :normal Vaf<cr>

  " shorthands for text objects. Mostly choose inner as default behavior.
  " vnoremap w iw
  " omap w :normal vw<cr>

  " vnoremap " i"
  " omap " :normal v"<cr>

  " vnoremap ' i'
  " omap ' :normal v'<cr>

  " vnoremap ( i(
  " omap ( :normal v(<cr>

  " vnoremap [ i[
  " omap [ :normal v[<cr>

  " vnoremap { i{
  " omap { :normal v{<cr>

  " vnoremap p ip
  " omap p :normal vp<cr>

  " nnoremap <leader>wp :normal! vipJ<esc>

  " nnoremap vi< :silent! normal! F<f<lvh%h<cr>
  " nnoremap vi> :silent! normal! F<f<lvh%h<cr>

  iabbr email bas080@hotmail.com

  inoremap qw <esc>:w<cr>

  " execute shell commands

  nnoremap !! V:!sh<cr>
  vnoremap !! :!sh<cr>

  " vimrc shortcuts

  nnoremap <leader>ev :vsplit $MYVIMRC<cr>
  nnoremap <leader>sv :source $MYVIMRC<cr>

  " Use h, j, k and l more
  nnoremap J <pagedown>
  nnoremap K <pageup>
  noremap h F
  noremap l f
  noremap H B
  noremap L W


  " jump to 80th collumn

  nnoremap \| 080l
  nnoremap gb gT

  " save and quit insert mode

  nnoremap qw <esc>:w<cr>

  " move one line up or down

  nnoremap <c-j> :m .+1<CR>==
  nnoremap <c-k> :m .-2<CR>==
  inoremap <c-j> <Esc>:m .+1<CR>==gi
  inoremap <c-k> <Esc>:m .-2<CR>==gi
  vnoremap <c-j> :m '>+1<CR>gv=gv
  vnoremap <c-k> :m '<-2<CR>gv=gv

  " paste quicker instead of ctrl+shift+v in insert

  nnoremap vv :r! clipboard<cr>
  imap vv <esc>vv


" HTML

  function! UserHTML()

    " select text in <>
    vnoremap <buffer> i< :<c-u>silent! normal! hF<f<lvh%h<cr>
    vnoremap <buffer> < i<
    omap <buffer> i< :normal vi<<cr>
    omap <buffer> < :normal vi<<cr>
    vnoremap <buffer> a< :<c-u>silent! normal! hF<f<v%<cr>
    omap <buffer> a< :normal va<<cr>

  endfunction
  autocmd Filetype html :call UserHTML()

" tex

  function! UserLatex()
    nnoremap em I{\em <esc>A}<esc>
    nnoremap bf I{\bf <esc>A}<esc>
    nnoremap <buffer> [ ?^ *\\<cr>
    nnoremap <buffer> ] /^ *\\<cr>
  endfunction
  autocmd Filetype tex :call UserLatex()

" javascript

  function! UserJavascript()

    " jsdoc iabbrvs
    iabbr <buffer> @p @param {
    iabbr <buffer> @r @returns {
    iabbr <buffer> @t @throws {

    " should: also add to python and any language that uses , to seperate
    " arguments
    nnoremap <buffer> 1a 0f(l
    nmap <buffer> 2a 1a1f,w
    nmap <buffer> 3a 1a2f,w
    nmap <buffer> 4a 1a3f,w
    nmap <buffer> 5a 1a4f,w

    nmap c1a 1act,
    nmap c2a 2act,
    nmap c3a 3act,
    nmap c4a 4act,
    nmap c5a 5act,

    nmap d1a 1adt,2x
    nmap d2a 2adt,2x
    nmap d3a 3adt,2x
    nmap d4a 4adt,2x
    nmap d5a 5adt,2x

    " nnoremap <buffer> ]] /(<cr>
    nnoremap <buffer> /f /function<space>
    noremap <buffer> [ :call searchpos('function', 'b')<cr>
    noremap <buffer> ] :call searchpos('function')<cr>

    " nnoremap <buffer> [[ ?(<cr>

  endfunction
  autocmd Filetype javascript :call UserJavascript()

" clojure

  function! UserClojure()

    function! s:AutoConnect()
      let replPort = system("cat ~/.lein/repl-port")
      if replPort
        execute ":Connect nrepl://localhost:" . replPort
      else
        echom "ERROR: nREPL not running"
      endif
    endfunction
    command! AutoConnect :call s:AutoConnect()

    " vim fireplace already has keybindings cpp and cpr
    " nnoremap <buffer> el V:Eval<cr>
    " nnoremap <buffer> ef :%Eval<cr>
    " nnoremap <buffer> eb vip:Eval<cr>
    "FIXME: should only happen is not in the lein project isSketch function should
    "suffice
  endfunction
  autocmd Filetype clojure :call UserClojure()

" vim

  function! UserVim()
    iabbr setl setlocal
  endfunction
  autocmd Filetype vim :call UserVim()

" pathogen

  execute pathogen#infect()
