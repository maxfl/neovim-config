fun! VimSetCache(dir, setshada)
    let l:dir = expand( a:dir )
    let &backupdir=l:dir.'/backup/,'.&backupdir
    let &directory=l:dir.'/swap/,'.&directory
    if exists('+undodir')
        let &undodir=l:dir.'/undo/,'.&undodir
    endif
    if a:setshada
        let &shadafile=l:dir.'/main.shada'
    endif
endf

if isdirectory(expand('~/.cache/vim'))
    call VimSetCache(expand('~/.cache/vim'), v:false)
endif

if isdirectory('.vimcache')
    call VimSetCache('.vimcache', v:true)
end

if exists('+undofile')
  set undofile
endif

