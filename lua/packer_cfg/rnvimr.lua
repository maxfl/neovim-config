return {
    'kevinhwang91/rnvimr', branch='main',
    cmd = 'RnvimrToggle',
    setup=function()
        local map = vim.api.nvim_set_keymap
        local opts={}
        map('' , '<F11>', '<CMD>RnvimrToggle<CR>', opts)
        map('!', '<F11>', '<CMD>RnvimrToggle<CR>', opts)
        map('t', '<F11>', [[<C-\><C-n><CMD>RnvimrToggle<CR>]], {silent=true, noremap=true})
    end,
    run='make install',
}
