set autochdir
set nocompatible
set hidden
set relativenumber
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
set ruler
set undofile
set undodir=~/.vim/undo
set cursorline
set expandtab
set foldmethod=indent
set list
set listchars=tab:▸\ ,eol:⋅
set noswapfile
set number
set numberwidth=1
set shiftwidth=2
set softtabstop=2
set so=1000
set tabstop=2
set textwidth=79
set formatoptions=qrn1
filetype off
set dictionary+=/usr/share/dict/words
filetype plugin indent on
set t_Co=256
set modelines=0
let mapleader=' '
set encoding=utf-8
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/
