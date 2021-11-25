return {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require'nvim-tree'.setup {
            auto_close = true
        }

        local map, opts = vim.api.nvim_set_keymap, {}
        map('n' , '<F10>', '<CMD>NvimTreeToggle<CR>', opts)
        map('!', '<F10>', '<CMD>NvimTreeToggle<CR>', opts)
        map('t', '<F10>', [[<C-\><C-n><CMD>NvimTreeToggle<CR>]], {silent=true, noremap=true})
    end
}

