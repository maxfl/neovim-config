return {
    'kevinhwang91/rnvimr', branch='main',
    cmd = 'RnvimrToggle',
    init = function()
        local map, opts = vim.api.nvim_set_keymap, {}
        map('n' , '<F12>', '<CMD>RnvimrToggle<CR>', opts)
        map('!', '<F12>', '<CMD>RnvimrToggle<CR>', opts)
        -- map('t', '<F12>', [[<C-\><C-n><CMD>RnvimrToggle<CR>]], {silent=true, noremap=true})
    end,
    -- build = 'make install',
}
