set autochdir
set timeoutlen=400
set nocompatible
set hidden
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
syntax on
set autoread
set hlsearch
set nowrap
set nolinebreak
set autoindent
set noruler
set noshowcmd
set undofile
set undodir=~/.vim/undo
"set cursorline
set expandtab
set foldmethod=indent
"set list
"set listchars=eol:
set noswapfile
set relativenumber
set numberwidth=1
set number
set shiftwidth=2
set softtabstop=2
set so=1000
set tabstop=2
set showtabline=0
set textwidth=79
set formatoptions=qrn1
filetype off
set dictionary+=/usr/share/dict/words
filetype plugin indent on
set modelines=0
let mapleader=' '
set encoding=utf-8
highlight OverLength ctermfg=red
match OverLength /\%81v.\+/
highlight LineNr ctermfg=black
highlight Search cterm=none ctermbg=black
highlight MatchParen cterm=none ctermbg=black
