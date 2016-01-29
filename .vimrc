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
  let mapleader = " "

" global

  function! UserGlobal()

    " highlight the 80th column
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn' , '\%81v', 100)

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

    nnoremap <leader><leader> i<space>
    inoremap kk <esc>kl
    inoremap kj <esc>l
    inoremap jj <esc>jl

    " switching between splits
    autocmd WinEnter * execute ":normal! \<c-w>84|"
    " autocmd BufHidden * execute ":resize 1000"
    " au CursorHoldI * execute ":stopinsert"
    autocmd FocusGained,BufEnter * :silent! !
    nnoremap <c-w> :echom "Use <c-hjkl> instead"<cr>
    nnoremap <c-j>  <c-w>j
    nnoremap <c-k>  <c-w>k
    nnoremap <c-h>  <c-w>h
    nnoremap <c-l>  <c-w>l
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
    nnoremap !! V:!sh<cr>
    nnoremap <c-x> i<c-x>
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>f /
    nnoremap <leader>nn :set number!<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
    nnoremap J <pagedown>
    nnoremap K <pageup>
    nnoremap \| 080l
    nnoremap gb gT
    nnoremap gf <c-w>gf
    noremap h F
    noremap l f
    noremap H B
    noremap L W
    nnoremap qw <esc>:w<cr>
    nnoremap yj yyp
    nnoremap yk yyP
    noremap - dd<esc>p
    noremap vv :normal! r! clipboard<cr>

  endfunction
  autocmd VimEnter * :call UserGlobal()

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
    iabbr <buffer> F function
    iabbr <buffer> A arguments
    iabbr <buffer> M Math
    iabbr <buffer> R return
    iabbr <buffer> Y apply(this, arguments);
    iabbr <buffer> P prototype
    iabbr <buffer> C call
    iabbr <buffer> U undefined
    iabbr <buffer> V var

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
