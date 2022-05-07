return {
    'junegunn/vim-easy-align',
    keys={
        {'v', '<Plug>(LiveEasyAlign)'},
        {'v', '<Plug>(EasyAlign)'},
    },
    cmd = 'EasyAlign',
    setup=function()
        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('v', '<leader>ea',  '<Plug>(LiveEasyAlign)', silent)
        map('v', '<leader>eA',  '<Plug>(EasyAlign)', silent)
        map('n', '<leader>et',  '<CMD>let p=getpos(".")<CR>vie:EasyAlign * & { "ignore_groups": [] } <CR><CMD>call setpos(".", p)<CR>', silent)
        map('n', '<leader>es',  '<CMD>let p=getpos(".")<CR>vaE:EasyAlign *\\ <CR><CMD>call setpos(".", p)<CR>', silent)
        map('n', '<leader>e--', '<CMD>let p=getpos(".")<CR>vaE:EasyAlign */ -- /<CR><CMD>call setpos(".", p)<CR>', silent)
        map('v', '<leader>et',  ':EasyAlign * &<CR>', silent)
        map('v', '<leader>es',  ':EasyAlign *\\ <CR>', silent)
        map('v', '<leader>e--', ':EasyAlign */ -- /<CR>', silent)
    end
}

