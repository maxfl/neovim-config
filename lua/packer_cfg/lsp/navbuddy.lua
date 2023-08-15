return {
    "SmiteshP/nvim-navbuddy",
    requires = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
        'folke/which-key.nvim',
        -- "numToStr/Comment.nvim",        -- Optional
        "nvim-telescope/telescope.nvim" -- Optional
    },
    config = function()
        local navbuddy = require("nvim-navbuddy")

        navbuddy.setup {
            lsp = {
                auto_attach = true,   -- If set to true, you don't need to manually use attach function
                preference = nil,      -- list of lsp server names in order of preference
            },
        }

        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end

        whichkey.register{
            ['<leader>u'] = {
                name = '+utils',
                n = {'<CMD>Navbuddy<CR>', 'navbuddy'},
            },
        }
        -- require("lspconfig").clangd.setup {
        --     on_attach = function(client, bufnr)
        --         navbuddy.attach(client, bufnr)
        --     end
        -- }
    end
}