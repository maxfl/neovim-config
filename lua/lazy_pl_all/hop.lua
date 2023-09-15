return {
    'phaazon/hop.nvim',
    dependencies = 'folke/which-key.nvim',
    branch = 'v1', -- optional but strongly recommended
    -- cmd = 'Hop*',
    init = function()
        local status, whichkey=pcall(function() return require 'which-key' end)
        if not status then return end
        whichkey.register{
            ['<leader>m'] = {
                name = '+hop',
                ['/'] = {"<CMD>HopPattern<CR>",   "pattern"},
                ['?'] = {"<CMD>HopPatternBC<CR>", "patter (back)"},
                f     = {"<CMD>HopChar1<CR>",     "char"},
                F     = {"<CMD>HopChar1BC<CR>",   "char (back)"},
                k     = {"<CMD>HopLineBC<CR>",    "line (back)"},
                j     = {"<CMD>HopLineAC<CR>",    "line"},
                w     = {"<CMD>HopWord<CR>",      "word"},
                W     = {"<CMD>HopWordBC<CR>",    "word (back)"}
            },
        }
    end,
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
}
