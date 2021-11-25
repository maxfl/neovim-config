vim.cmd[[
    function! UpdateColorscheme()
        hi LineNr ctermbg=darkgray guibg=black
        "hi FoldColumn ctermbg=darkgray guibg=black
        "hi SignColumn ctermbg=darkgray guibg=black
        hi Pmenu guibg=#808080
        hi VertSplit guifg=#808080
    endfunction
]]

return {
    'marko-cerovac/material.nvim',
    setup=function()
        vim.g.material_style='oceanic'
    end,
    config=function()
        require 'material'.setup{
            borders=true, -- does not work
            popup_menu='colorful',
            italics = {
                keywords = true
            }
        }
        vim.cmd[[
            colorscheme material
            call UpdateColorscheme()
        ]];
    end
}

-- return {
--     'jonathanfilip/vim-lucius',
--     config=function()
--         vim.cmd[[
--                 colorscheme lucius
--                 LuciusBlack
--                 call UpdateColorscheme()
--             ]];
--     end
-- }
