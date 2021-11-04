return {
    'jonathanfilip/vim-lucius',
    config=function()
        vim.cmd[[
                colorscheme lucius
                LuciusBlack
            ]];

        local function update_colorscheme()
            vim.cmd[[
                hi LineNr ctermbg=darkgray guibg=black
                hi FoldColumn ctermbg=darkgray guibg=black
                hi SignColumn ctermbg=darkgray guibg=black
                hi Pmenu guibg=#808080
            ]]
        end

        update_colorscheme()
    end
}
