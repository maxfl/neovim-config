return {
    'segeljakt/vim-isotope',
    opt=true,
    cmd='IsotopeToggle',
    setup=function()
        vim.g.isotope_use_default_mappings=false

        local map = vim.api.nvim_set_keymap
        local opts={}
        map('', '<Leader>iS', '<CMD>IsotopeToggle SUPERSCRIPT<CR>', opts)
        map('', '<Leader>i^', '<CMD>IsotopeToggle SUPERSCRIPT<CR>', opts)
        map('', '<Leader>i_', '<CMD>IsotopeToggle SUBSCRIPT<CR>', opts)
        map('', '<Leader>is', '<CMD>IsotopeToggle SUBSCRIPT<CR>', opts)
        map('', '<Leader>if', '<CMD>IsotopeToggle FRAKTUR<CR>', opts)
        map('', '<Leader>ic', '<CMD>IsotopeToggle SMALL_CAPS<CR>', opts)
        map('', '<Leader>id', '<CMD>IsotopeToggle<CR>', opts)
    end
}

