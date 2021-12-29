return {
    'inkarkat/vim-ConflictMotions',
    requires={
        {'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'},
        'tpope/vim-repeat',
        'inkarkat/vim-visualrepeat'
    },
    -- keys = {
    --     {'n', '<Leader>='}
    -- },
    setup=function()
        vim.g.ConflictMotions_TakeMappingPrefix='<Leader>='
    end,
}
