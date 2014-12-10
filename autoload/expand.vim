function! expand#ExpandRange() range
  let new_line = "_THIS_IS_A_NEW_LINE_"
  let selection = join(getline(a:firstline, a:lastline), new_line)
  let expanded = substitute(expand(selection), "\n", new_line, 'g')
  let lines = split(expanded, new_line)

  execute 'silent! ' . a:firstline . ',' . a:lastline . 'd'
  call append(a:firstline - 1, lines)
  execute 'silent! normal =' . len(lines) . 'k'
endfunction
