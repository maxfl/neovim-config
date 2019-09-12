" needed to override AutoPairs
function Kmp()
    set keymap=russian-jcukenwin
    "-typewriter
    set iminsert=0
    set imsearch=-1
    "lmap 9 (
    "lmap 0 )
endfunction
au BufEnter *.tex,*.txt call Kmp()
