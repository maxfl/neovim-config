return {
    'inkarkat/vim-ConflictMotions',
    requires={
        {'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'},
        'tpope/vim-repeat',
        'inkarkat/vim-visualrepeat'
    },
    config=function()
        vim.g.ConflictMotions_TakeMappingPrefix='<Leader>='
    end,
}
