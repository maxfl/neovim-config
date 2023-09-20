return {
    'inkarkat/vim-ConflictMotions',
    dependencies = {
        {'inkarkat/vim-CountJump', dependencies = 'inkarkat/vim-ingo-library'},
        'tpope/vim-repeat',
        'inkarkat/vim-visualrepeat'
    },
    -- keys = {
    --     {'n', '<Leader>='}
    -- },
    init = function()
        vim.g.ConflictMotions_TakeMappingPrefix='<Leader>='
    end,
}
