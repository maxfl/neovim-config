return {
    'marko-cerovac/material.nvim',
    config=function()
        vim.g.material_style='oceanic'
        require 'material'.setup{
            borders=true, -- does not work
            popup_menu='colorful',
            italics = {
                keywords = true
            },
            custom_highlights = {
                LineNr = {bg='black'},
                Pmenu = {bg='#808080'},
                VertSplit = {bg='#808080'}
            }
        }
        vim.cmd[[colorscheme material]];
    end
}

-- return {
--     'jonathanfilip/vim-lucius',
--     config=function()
--         vim.cmd[[
--                 colorscheme lucius
--                 LuciusBlack
--             ]];
--     end
-- }
