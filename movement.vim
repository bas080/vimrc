"make-h-and-l-find
nnoremap h F
nnoremap l f
nnoremap L ;
nnoremap H ,

vnoremap h F
vnoremap l f
vnoremap L ;
vnoremap H ,

nnoremap f /\v
nnoremap F ?\v
vnoremap f /\v
vnoremap F ?\v

nnoremap J n
nnoremap K N
nnoremap n b
nnoremap N B

"easier-%
nnoremap s %
vnoremap s %

"jump words
nnoremap <tab> *vey
nnoremap <s-tab> #vey
vnoremap <tab> *
nnoremap * :echom "WARNING: use tab to jump to matching symbol"<cr>
