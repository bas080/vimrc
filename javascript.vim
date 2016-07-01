"jsdoc
iabbr <buffer> @p @param
iabbr <buffer> @r @returns
iabbr <buffer> @e @throws
iabbr <buffer> @t @todo
iabbr <buffer> cl console.log

"line

"line-comment
nnoremap <leader>lc I* <esc>A *<esc>yypv$r*$r/kP^v$r*^r/
