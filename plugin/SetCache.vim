fun! VimSetCache(dir, setshada)
    let l:dir = expand( a:dir )

    let l:backupdir=l:dir.'/backup/'
    let l:directory=l:dir.'/swap/'
    let l:undodir=l:dir.'/undo/'

    for idir in [l:backupdir, l:directory, l:undodir]
        if !isdirectory(idir)
            call mkdir(idir)
        endif
    endfor

    let &backupdir=l:backupdir.','.&backupdir
    let &directory=l:directory.','.&directory
    if exists('+undodir')
        let &undodir=l:undodir.','.&undodir
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

