return {
    'folke/lua-dev.nvim',
    opt=true,
    ft='lua',
    config=function()
        local luadev = require("lua-dev").setup{
            vimruntime=true,
            types=true,
            plugins=true
            -- add any options here, or leave empty to use the default settings
            -- lspconfig = {
                --   cmd = {"lua-language-server"}
                -- },
            }

            local lspconfig = require('lspconfig')
            lspconfig.sumneko_lua.setup(luadev)
        end
    }
