fun! VimSetCache(dir)
    if &shadafile!=''
        return
    endif
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

    let &shadafile=l:dir.'/main.shada'
    echo 'Set shadafile='.&shadafile

    augroup SetCache
        au!
    augroup END
endf

fun! VimSetCacheAuto()
    if &autochdir
        return
    endif
    if isdirectory('.vimcache')
        call VimSetCache('.vimcache')
    endif
endfunction

if exists('+undofile')
  set undofile
endif

augroup SetCache
    au!
    au DirChanged * call VimSetCacheAuto()
augroup END

call VimSetCacheAuto()

