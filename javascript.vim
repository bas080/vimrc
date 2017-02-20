"jsdoc
iabbr <buffer> @p @param
iabbr <buffer> @r @returns
iabbr <buffer> @e @throws
iabbr <buffer> @t @todo
iabbr <buffer> cl console.log
let b:syntastic_checkers = ['eslint']

"line

"line-comment
nnoremap <leader>lc I* <esc>A *<esc>yypv$r*$r/kP^v$r*^r/

nnoremap cl :normal!Iconsole.log(<esc>$F;i)<esc>
