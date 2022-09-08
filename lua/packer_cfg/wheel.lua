return {
    'chimay/wheel',
    setup = function()

    end,
    config = function()
        local path = vim.fn.expand('~/.local/share/nvim/wheel')
        if vim.fn.isdirectory(path)==0 then
            vim.fn.mkdir(path, 'p')
        end

        vim.cmd[[
            let g:wheel_config.autoread = 1
            let g:wheel_config.autowrite = 1
        ]]

        local map, opts = vim.api.nvim_set_keymap, {}
        map('n', '<M-w><C-p>', '<Plug>(wheel-previous-circle)', opts)
        map('n', '<M-w><C-n>', '<Plug>(wheel-next-circle)', opts)
        map('n', '<M-w><S-p>', '<Plug>(wheel-previous-location)', opts)
        map('n', '<M-w><S-n>', '<Plug>(wheel-next-location)', opts)
        map('n', '<M-w>p', '<Plug>(wheel-history-newer-in-circle)', opts)
        map('n', '<M-w>n', '<Plug>(wheel-history-older-in-circle)', opts)
        map('n', '<M-w><S-a>', '<M-w>a<Tab><Tab><CR>', opts)
        map('n', '<M-w><M-a>', '<M-w>a<Tab><Tab><CR>', opts)

        map('n', '<M-p>', '<Plug>(wheel-history-newer-in-circle)', opts)
        map('n', '<M-n>', '<Plug>(wheel-history-older-in-circle)', opts)
        map('n', '<M-S-p>', '<Plug>(wheel-previous-circle)', opts)
        map('n', '<M-S-n>', '<Plug>(wheel-next-circle)', opts)

        map('n', '<M-w>d', '<Plug>(wheel-prompt-delete-location)', opts)
    end
}
