return {
    {
        'tpope/vim-surround',
        setup=function()
            vim.g.surround_no_mappings=true
        end
    },
    {
        'mg979/vim-visual-multi',
        requires='tpope/vim-surround',
        setup=function()
            vim.g.VM_theme = 'neon'
        end
    }
}
