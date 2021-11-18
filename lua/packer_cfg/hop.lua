return {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    cmd='Hop*',
    setup = function()
        local map, opts=vim.api.nvim_set_keymap, {}
        -- map('n', '<Leader>mf', "<CMD>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", opts)
        -- map('n', '<Leader>mF', "<CMD>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", opts)
        map('n', '<Leader>mf', "<CMD>HopChar1<CR>", opts)
        map('n', '<Leader>mF', "<CMD>HopChar1BC<CR>", opts)
        map('n', '<Leader>mw', "<CMD>HopWord<CR>", opts)
        map('n', '<Leader>mW', "<CMD>HopWordBC<CR>", opts)
        map('n', '<Leader>m/', "<CMD>HopPattern<CR>", opts)
        map('n', '<Leader>m?', "<CMD>HopPatternBC<CR>", opts)
        map('n', '<Leader>mk', "<CMD>HopLine<CR>", opts)
        map('n', '<Leader>mj', "<CMD>HopLineBC<CR>", opts)
    end,
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
}
