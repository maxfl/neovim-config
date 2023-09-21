-- 
-- Indentation guides
--
return {
    'lukas-reineke/indent-blankline.nvim',
    ft={'python', 'lua', 'fish', 'markdown'},
    dependencies = 'nvim-treesitter/nvim-treesitter', -- needed for show_current_context
    config=function()
        require 'indent_blankline'.setup {
            enabled=true,
            -- char = "|",
            char = '┊',
            show_end_of_line=true,
            buftype_exclude = {"terminal"},
            filetype={'python', 'fish', 'lua'},
            show_current_context=true -- needs treesitter
        }
    end
}
