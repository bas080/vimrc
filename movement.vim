"make-h-and-l-find
nnoremap h F
nnoremap l f
nnoremap L ;
nnoremap H ,

vnoremap h F
vnoremap l f
vnoremap L ;
vnoremap H ,

"use f to search threw stuff
nnoremap f /\v
nnoremap F ?\v

"easier-%
nnoremap <tab> %
vnoremap <tab> %
nnoremap % :echom "WARNING: use tab to jump to matching brackets"<cr>

"jump-to-80th-collumn
nnoremap \| 080l
