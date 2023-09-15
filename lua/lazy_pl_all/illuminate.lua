return {
    'RRethy/vim-illuminate',
    init = function()
        -- vim.g.Illuminate_ftwhitelist = {}
    end,
    config=function()
        require 'lspconfig'.gopls.setup {
            on_attach = function(client)
                -- [[ other on_attach code ]]
                require 'illuminate'.on_attach(client)
            end,
        }
    end
}
