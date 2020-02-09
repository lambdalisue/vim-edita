let s:repo = fnamemodify(expand('<sfile>'), ':p:h:h:h:h')

function! edita#neovim#client#open() abort
  let server = $NVIM_LISTEN_ADDRESS
  let mode = edita#neovim#util#mode(server)
  let ch = sockconnect(mode, server, { 'rpc': 1 })
  let target = fnamemodify(argv()[-1], ':p')
  let client = serverstart()
  call rpcrequest(ch, 'nvim_command', printf(
        \ 'call edita#neovim#editor#open("%s", "%s")',
        \ target,
        \ client,
        \))
  echomsg printf('Waiting %s. Hit Ctrl-C to cancel', target)
endfunction

function! edita#neovim#client#EDITOR() abort
  let args = [
        \ v:progpath,
        \ '--headless',
        \ '--clean',
        \ '--noplugin',
        \ '-n',
        \ '-R',
        \]
  let cmds = [
        \ printf('set runtimepath^=%s', fnameescape(s:repo)),
        \ 'call edita#neovim#client#open()'
        \]
  call map(cmds, { -> printf('-c %s', shellescape(v:val)) })
  return join(args + cmds)
endfunction
