return {
    'segeljakt/vim-isotope',
    opt=true,
    cmd='IsotopeToggle',
    setup=function()
        vim.g.isotope_use_default_mappings=false

        local map = vim.api.nvim_set_keymap
        local opts={}
        map('', '<Leader>iS', ':IsotopeToggle SUPERSCRIPT<CR>', opts)
        map('', '<Leader>i^', ':IsotopeToggle SUPERSCRIPT<CR>', opts)
        map('', '<Leader>i_', ':IsotopeToggle SUBSCRIPT<CR>', opts)
        map('', '<Leader>is', ':IsotopeToggle SUBSCRIPT<CR>', opts)
        map('', '<Leader>if', ':IsotopeToggle FRAKTUR<CR>', opts)
        map('', '<Leader>ic', ':IsotopeToggle SMALL_CAPS<CR>', opts)
        map('', '<Leader>id', ':IsotopeToggle<CR>', opts)
    end
}

