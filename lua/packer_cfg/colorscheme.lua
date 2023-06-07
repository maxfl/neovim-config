return {
    'marko-cerovac/material.nvim',
    -- commit = 'd0aa4533',
    config=function()
        vim.g.material_style='oceanic'
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
                    LineNr    = {bg='black'},
                    Pmenu     = {bg='#808080'},
                    VertSplit = {bg='#808080'},
                    DiffChange= {bg='#13191C'}
                },
                disable = {
                    borders = false
                }
            }
            vim.cmd[[colorscheme material]];
        end
    }
    --,
    -- {
        --     '4e554c4c/darkman.nvim',
        --     run = 'go build -o bin/darkman.nvim',
        --     config = function()
            --         require 'darkman'.setup{
                --             change_background = true,
                --             send_user_event = true
                --         }
                --     end,
                -- }
