return {
    'matbme/JABS.nvim',
    cmd = 'JABSOpen',
    setup = function()
        -- vim.api.nvim_set_keymap('', '<C-Space>', '<CMD>JABSOpen<CR>', {})
        vim.api.nvim_set_keymap('', '<Leader>ub', '<CMD>JABSOpen<CR>', {})
    end,
    config=function()
        -- local ui = vim.api.nvim_list_uis()[1]

        require 'jabs'.setup {
            position = 'center', -- center, corner
            width = 100,
            height = 20,
            -- border = 'shadow', -- none, single, double, rounded, solid, shadow, (or an array or chars)
            --
            -- -- Options for preview window
            -- preview_position = 'left', -- top, bottom, left, right
            -- preview = {
            --     width = 40,
            --     height = 30,
            --     border = 'double', -- none, single, double, rounded, solid, shadow, (or an array or chars)
            -- },
            --
            -- -- the options below are ignored when position = 'center'
            -- col = ui.width,  -- Window appears on the right
            -- row = ui.height/2, -- Window appears in the vertical middle
        }
    end
}
