function! CurrentTabDo(...)
    let l:buffers = keys(ctrlspace#api#Buffers(tabpagenr()))
    let l:cmd = ':'.join(a:000)
    for buf in l:buffers
        exe 'buffer '.buf
        execute l:cmd
    endfor
endfunction

command -nargs=+ -complete=command CurrentTabDo call CurrentTabDo(<f-args>)
