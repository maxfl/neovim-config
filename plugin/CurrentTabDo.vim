function! CurrentTabDo(...)
    let l:buffers = join(sort(keys(ctrlspace#api#Buffers(tabpagenr()))), ',')
    let l:cmd = ':'.l:buffers.'bufdo ' . join(a:000)
    execute l:cmd
endfunction
command! -nargs=+ -complete=command CurrentTabDo call CurrentTabDo(<f-args>)
