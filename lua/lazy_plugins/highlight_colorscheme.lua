return {
    {
        'marko-cerovac/material.nvim',
        -- commit = 'd0aa4533',
        config=function()
            require 'material'.setup{
                -- popup_menu='colorful',
                -- italics = {
                    --     keywords = true
                    -- },
                    styles = {
                        keywords = {
                            italic = true
                        },
                    },
                    custom_highlights = {
                        -- LineNr    = {bg='black'},
                        -- Pmenu     = {bg='#808080'},
                        -- VertSplit = {bg='#808080'},
                        -- DiffChange= {bg='#13191C'}
                    },
                    disable = {
                        borders = false
                    }
                }
                function dark()
                    if vim.o.background=='dark' then
                        vim.g.material_style='oceanic'
                        vim.cmd.colorscheme 'material'
                    end
                end
                vim.api.nvim_create_augroup('background',{clear=false})
                vim.api.nvim_create_autocmd("OptionSet", {
                    group = 'background',
                    pattern = 'background',
                    callback = dark
                })
                dark()
            end
        },
        {
            'sainnhe/edge',
            config=function()
                vim.g.edge_transparent_background = false
                function light()
                    if vim.o.background=='light' then
                        vim.cmd.colorscheme 'edge'
                    end
                end
                vim.api.nvim_create_augroup('background',{clear=false})
                vim.api.nvim_create_autocmd("OptionSet", {
                    group = 'background',
                    pattern = 'background',
                    callback = light
                })
                light()
            end
        }
    }
    --,
    -- {
        --     '4e554c4c/darkman.nvim',
        --     build = 'go build -o bin/darkman.nvim',
        --     config = function()
            --         require 'darkman'.setup{
                --             change_background = true,
                --             send_user_event = true
                --         }
                --     end,
                -- }
