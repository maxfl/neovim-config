return {
    'kevinhwang91/rnvimr', branch='main',
    cmd = 'RnvimrToggle',
    init = function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('' , '<F11>', '<CMD>RnvimrToggle<CR>', opts)
        map('!', '<F11>', '<CMD>RnvimrToggle<CR>', opts)
        -- map('t', '<F11>', [[<C-\><C-n><CMD>RnvimrToggle<CR>]], {silent=true, noremap=true})
    end,
    -- build = 'make install',
}
