return {
    'junegunn/vim-easy-align',
    keys={
        {'v', '<Leader>e'},
        {'n', '<Leader>e'}
    },
    config=function()
        local map = vim.api.nvim_set_keymap
        local silent={silent=true}
        map('v', '<leader>ea',  '<Plug>(LiveEasyAlign)', silent)
        map('v', '<leader>eA',  '<Plug>(EasyAlign)', silent)
        map('n', '<leader>et',  '<CMD>let p=getpos(".")<CR>vie<CMD>EasyAlign * &<CR><CMD>call setpos(".", p)<CR>', silent)
        map('n', '<leader>es',  '<CMD>let p=getpos(".")<CR>vaE<CMD>EasyAlign *\\ <CR><CMD>call setpos(".", p)<CR>', silent)
        map('n', '<leader>e--', '<CMD>let p=getpos(".")<CR>vaE<CMD>EasyAlign */ -- /<CR><CMD>call setpos(".", p)<CR>', silent)
        map('v', '<leader>et',  '<CMD>EasyAlign * &<CR>', silent)
        map('v', '<leader>es',  '<CMD>EasyAlign *\\ <CR>', silent)
        map('v', '<leader>e--', '<CMD>EasyAlign */ -- /<CR>', silent)
    end
}

