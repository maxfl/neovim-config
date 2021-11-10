return {
    'lukas-reineke/indent-blankline.nvim',
    opt=true,
    ft='python',
    cmd={'IndentBlanklineToggle', 'IndentBlankline*'},
    requires='nvim-treesitter/nvim-treesitter', -- needed for show_current_context
    config=function()
        require 'indent_blankline'.setup {
            enabled=false,
            -- char = "|",
            char = '┊',
            show_end_of_line=true,
            buftype_exclude = {"terminal"},
            filetype={'python'},
            show_current_context=true -- needs treesitter
        }
    end
}
