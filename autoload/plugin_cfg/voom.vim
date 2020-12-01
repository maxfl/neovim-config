function plugin_cfg#voom#add()
    let g:voom_ft_modes = {
                \ 'markdown': 'markdown',
                \ 'python': 'python',
                \ 'rst': 'rest',
                \ 'tex': 'latex',
                \ 'wiki': 'wiki',
                \ }
    let g:voom_tree_width = 60
    let g:voom_tree_placement='right'
    let g:voom_tab_key = "<C-Tab>"
    nmap <silent> <Leader>wo :VoomToggle<CR>
endfunction

