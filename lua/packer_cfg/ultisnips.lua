return {
    'SirVer/ultisnips',
    requires='honza/vim-snippets',
    setup=function()
        vim.g.UltiSnipsExpandTrigger='<Tab>'
        -- vim.g.UltiSnipsJumpForwardTrigger='<Tab>'
        -- vim.g.UltiSnipsJumpBackwardTrigger='<S-Tab>'
    end
}
