let s:EDITOR_SAVED = exists('$EDITOR') ? $EDITOR : v:null


function! edita#EDITOR() abort
  return has('nvim')
        \ ? edita#neovim#client#EDITOR()
        \ : edita#vim#client#EDITOR()
endfunction

function! edita#enable() abort
  let $EDITOR = edita#EDITOR()
endfunction

function! edita#disable() abort
  if s:EDITOR_SAVED is# v:null
    unlet $EDITOR
  else
    let $EDITOR = s:EDITOR_SAVED
  endif
endfunction


let g:edita#opener = get(g:, 'edita#opener', 'tabedit')
