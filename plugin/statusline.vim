let g:slnormal='#334b7d'

function! NormalTerm()
    set laststatus=2 "show statusline always
    set ruler
    set showcmd
    set number
    set scrolljump=1
endfunction

function! SlowTerm()
    set laststatus=0
    set noruler
    set noshowcmd
    set nonumber
    set scrolljump=5
endfunction

command! SlowTerm call SlowTerm()
command! NormalTerm call NormalTerm()

