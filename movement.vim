"make-h-and-l-find
nnoremap h F
nnoremap l f
nnoremap L ;
nnoremap H ,

vnoremap h F
vnoremap l f
vnoremap L ;
vnoremap H ,

nnoremap jj zj
nnoremap kk zk
set timeoutlen=400

"use f to search threw stuff
nnoremap f /\v
nnoremap F ?\v

"easier-%
nnoremap s %
vnoremap s %

"jump words
nnoremap <tab> *
vnoremap <tab> *
nnoremap * :echom "WARNING: use tab to jump to matching symbol"<cr>
