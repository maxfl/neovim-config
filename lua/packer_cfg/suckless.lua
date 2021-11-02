return {
    'fabi1cazenave/suckless.vim',
    config=function()
        local map = vim.api.nvim_set_keymap
        map('n', '<M-->', ':tabprev<CR>', {})
        map('n', '<M-=>', ':tabnext<CR>', {})
        map('n', '<M-+>', ':tabnew<CR>', {})
    end,
    setup=function()
        vim.g.suckless_tabline=false
        vim.g.suckless_guitablabel=false
        vim.g.suckless_wrap_around_hl=false
        vim.g.suckless_wrap_around_jk=false
    end
}

