return {
    'junegunn/vim-easy-align',
    opt=true,
    keys={'', '<Leader>e'},
    config=function()
        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('v', '<leader>ea', 'Plug>(LiveEasyAlign)', silent)
        map('v', '<leader>eA', 'Plug>(EasyAlign)', silent)
        map('n', '<leader>et', 'let p=getpos(".")<CR>vie:EasyAlign * &<CR>:call setpos(".", p)<CR>', silent)
        map('n', '<leader>es', 'let p=getpos(".")<CR>vaE:EasyAlign *\\ <CR>:call setpos(".", p)<CR>', silent)
        map('n', '<leader>e--', 'let p=getpos(".")<CR>vaE:EasyAlign */ -- /<CR>:call setpos(".", p)<CR>', silent)
        map('v', '<leader>et', 'EasyAlign * &<CR>', silent)
        map('v', '<leader>es', 'EasyAlign *\\ <CR>', silent)
        map('v', '<leader>e--', 'EasyAlign */ -- /<CR>', silent)
    end
}

