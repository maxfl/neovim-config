function plugin_cfg#quickhl#add()
    nmap <leader>hm <Plug>(quickhl-manual-this)
    xmap <leader>hm <Plug>(quickhl-manual-this)
    nmap <leader>hn <Plug>(quickhl-manual-reset)
    xmap <leader>hn <Plug>(quickhl-manual-reset)

    nmap <leader>hM :exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>
    xmap <leader>hM :exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>
    nmap <leader>hN :exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>
    xmap <leader>hN :exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>

    " nmap <Space>j <Plug>(quickhl-cword-toggle)
    " nmap <Space>] <Plug>(quickhl-tag-toggle)
    map <leader>hH <Plug>(operator-quickhl-manual-this-motion)
endfunction
