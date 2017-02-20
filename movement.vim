"make-h-and-l-find
nnoremap h F
nnoremap l f

vnoremap h F
vnoremap l f

nnoremap L ;
nnoremap H ,

"use f to search threw stuff
nnoremap f /\v
nnoremap F ?\v

"easier-%
nnoremap <tab> %
vnoremap <tab> %
nnoremap % :echom "WARNING: use tab to jump to matching brackets"<cr>

"jump-to-80th-collumn
nnoremap \| 080l
