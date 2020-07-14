function plugin_cfg#tiler#post_source()
    nmap <C-W>n <plug>TilerNew
    nmap <C-W>s <plug>TilerNew
    nmap <C-W>v <plug>TilerNew
    nmap <C-W>c <plug>TilerClose
    nmap <C-W>. <plug>TilerRotateForwards
    nmap <C-W>, <plug>TilerRotateBackwards

    "nmap <C-W><space> <Plug>TilerZoom
    "nmap <C-Space> <Plug>TilerFocus

    nmap <C-W>k <Plug>TilerAddMaster
    nmap <C-W>j <Plug>TilerDelMaster
    nmap <C-W>l <Plug>TilerRotateLayoutR
    nmap <C-W>h <Plug>TilerRotateLayoutL

    nmap <M-o> <plug>TilerNew
    nmap <M-w> <plug>TilerClose

    " not specific to tiler, but useful for window navigation.
    nmap <M-j> :wincmd j<CR>
    nmap <M-k> :wincmd k<CR>
    nmap <M-l> :wincmd l<CR>
    nmap <M-h> :wincmd h<CR>
endfunction

