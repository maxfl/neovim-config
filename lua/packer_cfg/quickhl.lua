return {
    't9md/vim-quickhl',
    opt=true,
    keys={
        {'n', '<Leader>hm'}, {'x', '<Leader>hm'},
        {'n', '<Leader>hn'}, {'x', '<Leader>hn'},
        {'n', '<Leader>hM'}, {'x', '<Leader>hM'},
        {'n', '<Leader>hN'}, {'x', '<Leader>hN'},
    },
    cmd='QuickhlManual*',
    config=function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('n', '<leader>hm', '<Plug>(quickhl-manual-this)', opts)
        map('x', '<leader>hm', '<Plug>(quickhl-manual-this)', opts)
        map('n', '<leader>hn', '<Plug>(quickhl-manual-reset)', opts)
        map('x', '<leader>hn', '<Plug>(quickhl-manual-reset)', opts)

        map('n', '<leader>hM', [[<CMD>exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('x', '<leader>hM', [[<CMD>exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('n', '<leader>hN', [[<CMD>exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('x', '<leader>hN', [[<CMD>exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>]], opts)

        -- map('n', '<Space>j', '<Plug>(quickhl-cword-toggle)', opts)
        -- map('n', '<Space>]', '<Plug>(quickhl-tag-toggle)', opts)
        map('', '<leader>hH', '<Plug>(operator-quickhl-manual-this-motion)', opts)
    end
}
