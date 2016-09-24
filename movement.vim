"make-h-and-l-find
noremap h F
noremap l f
nnoremap L ;
nnoremap H ,

"use f to search threw stuff
nnoremap f /\v
nnoremap F ?\v
nnoremap / :echo "WARNING: use f instead"<cr>
nnoremap ? :echo "WARNING: use F instead"<cr>

"easier-%
nnoremap <tab> %
vnoremap <tab> %
nnoremap % :echom "WARNING: use tab to jump to matching brackets"<cr>

"jump-to-80th-collumn
nnoremap \| 080l
