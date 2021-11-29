return {
    'fabi1cazenave/suckless.vim',
    disable = true,
    config=function()
        -- local map = vim.api.nvim_set_keymap
        -- local opts = {}
        -- map('n', '<M-->', '<CMD>tabprev<CR>', opts)
        -- map('n', '<M-=>', '<CMD>tabnext<CR>', opts)
        -- map('n', '<M-+>', '<CMD>tabnew<CR>', opts)
    end,
    setup=function()
        vim.g.suckless_tabline=false
        vim.g.suckless_guitablabel=false
        vim.g.suckless_wrap_around_hl=false
        vim.g.suckless_wrap_around_jk=false
    end
}

