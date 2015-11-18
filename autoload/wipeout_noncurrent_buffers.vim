function! wipeout_noncurrent_buffers#wipeout()
  let l:bc = bufnr('%')
  let l:bl = filter(range(1, bufnr('$')), 'bufexists(v:val) && v:val != l:bc')
  if(len(l:bl) > 0)
    execute 'bwipeout! ' . join(l:bl, ' ')
  endif
endfunction
