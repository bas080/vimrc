"Make h and l find.
nnoremap h F
nnoremap l f
nnoremap dl df
nnoremap dh dF
nnoremap cl cf
nnoremap ch cF

"Repeat find.
nnoremap L ;
nnoremap H ,
vnoremap L ;
vnoremap H ,

"Move to chars instead of a single char.
vnoremap h F
vnoremap l f

"Do a search on the current document with f.
nnoremap f /\v
nnoremap F ?\v
vnoremap f /\v
vnoremap F ?\v

"Next or previous search match.
nnoremap J n
nnoremap K N
vnoremap J n
vnoremap K N
"And have <Enter> squash selected lines into a single one
vnoremap <space> J
nnoremap <space> J

"in case i typo the b with the right hand by pressing n.
nnoremap n b
nnoremap N B

"Search forward for word nearest or under cursor.
nnoremap <tab> *
nnoremap <s-tab> #
vnoremap <tab> *
vnoremap <s-tab> #
