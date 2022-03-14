return {
    'marko-cerovac/material.nvim',
    config=function()
        vim.g.material_style='oceanic'
        require 'material'.setup{
            -- popup_menu='colorful',
            italics = {
                keywords = true
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
