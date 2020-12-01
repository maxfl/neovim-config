function plugin_cfg#textmanip#add()
    let g:textmanip_enable_mappings=0
    let g:textmanip_move_ignore_shiftwidth=1
    xmap <C-j> <Plug>(textmanip-move-down)
    xmap <C-k> <Plug>(textmanip-move-up)
    xmap <C-h> <Plug>(textmanip-move-left)
    xmap <C-l> <Plug>(textmanip-move-right)
endfunction

function plugin_cfg#textmanip#post_source()
    function! TMoff()
        set ei+=TextYankPost
    endfunction
    function! TMon()
        set ei-=TextYankPost
    endfunction
    "call submode#map('textmanip', 'x', 'r', 'j', '<C-j>')
    "call submode#map('textmanip', 'x', 'r', 'k', '<C-k>')
    "call submode#map('textmanip', 'x', 'r', 'h', '<C-h>')
    "call submode#map('textmanip', 'x', 'r', 'l', '<C-l>')
endfunction
