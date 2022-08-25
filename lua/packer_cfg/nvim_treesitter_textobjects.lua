return {
    'nvim-treesitter/nvim-treesitter-textobjects',
    branch='0.5-compat',
    requires='nvim-treesitter/nvim-treesitter',
    config=function()
        require'nvim-treesitter.configs'.setup{
            textobjects = {
                select = {
                    enable = true,

                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,

                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["ab"] = "@block.outer",
                        ["ib"] = "@block.inner",
                        ["aF"] = "@frame.outer",
                        ["iF"] = "@frame.inner",
                        -- ["aC"] = "@comment.outer",
                        -- ["iC"] = "@comment.inner",
                        ["a@"] = "@call.outer",
                        ["i@"] = "@call.inner",
                        -- ["a."] = "@parameter.outer",
                        -- ["i."] = "@parameter.inner",
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",

                        -- -- Or you can define your own textobjects like this
                        -- ["iF"] = {
                            --     python = "(function_definition) @function",
                            --     cpp = "(function_definition) @function",
                            --     c = "(function_definition) @function",
                            --     java = "(method_declaration) @function",
                            -- },
                        },
                    },
                },
                -- swap = {
                --     enable = true,
                --     swap_next = {
                --         ["<leader>a"] = "@parameter.inner",
                --     },
                --     swap_previous = {
                --         ["<leader>A"] = "@parameter.inner",
                --     },
                -- },
            }
        end
    }
