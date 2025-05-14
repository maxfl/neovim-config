return {
    't9md/vim-quickhl',
    -- keys={
    --     {'n', '<Plug>(quickhl-manual-this)'}, {'x', '<Plug>(quickhl-manual-this)'},
    --     {'n', '<Plug>(quickhl-manual-reset)'}, {'x', '<Plug>(quickhl-manual-reset)'},
    -- },
    -- cmd = 'QuickhlManual*',
    init = function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('n', '<leader>hm', '<Plug>(quickhl-manual-this)', opts)
        map('x', '<leader>hm', '<Plug>(quickhl-manual-this)', opts)
        map('n', '<leader>hn', '<Plug>(quickhl-manual-reset)', opts)
        map('x', '<leader>hn', '<Plug>(quickhl-manual-reset)', opts)
        map('n', '<leader>h,', '<Plug>(quickhl-manual-go-to-prev)', opts)
        map('n', '<leader>h.', '<Plug>(quickhl-manual-go-to-next)', opts)

        map('n', '<leader>hM', [[<CMD>exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('x', '<leader>hM', [[<CMD>exe 'QuickhlManualAdd! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('n', '<leader>hN', [[<CMD>exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>]], opts)
        map('x', '<leader>hN', [[<CMD>exe 'QuickhlManualDelete! \<'.expand('<cword>').'\>'<CR>]], opts)

        -- map('n', '<Space>j', '<Plug>(quickhl-cword-toggle)', opts)
        -- map('n', '<Space>]', '<Plug>(quickhl-tag-toggle)', opts)
        map('n', '<leader>hH', '<Plug>(operator-quickhl-manual-this-motion)', opts)
    end
}
