function plugin_cfg#suckless#add()
    let g:suckless_tabline=0
    let g:suckless_guitablabel=0
endfunction

function plugin_cfg#suckless#post_source()
    nmap <M--> :tabprev<CR>
    nmap <M-=> :tabnext<CR>
    nmap <M-+> :tabnew<CR>
endfunction
