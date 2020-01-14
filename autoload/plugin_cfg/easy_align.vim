function plugin_cfg#easy_align#add()
    vmap <silent> <leader>ea <Plug>(LiveEasyAlign)
    vmap <silent> <leader>eA <Plug>(EasyAlign)
    nmap <silent> <leader>et  :let p=getpos('.')<CR>vie:EasyAlign * &<CR>:call setpos('.', p)<CR>
    nmap <silent> <leader>es  :let p=getpos('.')<CR>vaE:EasyAlign *\ <CR>:call setpos('.', p)<CR>
    nmap <silent> <leader>e-- :let p=getpos('.')<CR>vaE:EasyAlign */ -- /<CR>:call setpos('.', p)<CR>
    vmap <silent> <leader>et  :'<,'>EasyAlign * &<CR>
    vmap <silent> <leader>es  :'<,'>EasyAlign *\ <CR>
    vmap <silent> <leader>e-- :'<,'>EasyAlign */ -- /<CR>
endfunction
