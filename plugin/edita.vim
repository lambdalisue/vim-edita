if exists('g:edita_loaded')
  finish
endif
let g:edita_loaded = 1


if !has('nvim')
  function! Tapi_edita_open(bufnr, arglist) abort
    let target = a:arglist[0]
    call edita#vim#editor#open(target, a:bufnr)
  endfunction
endif

if get(g:, 'edita_enable', 1)
  call edita#enable()
endif
