return {
    'numToStr/Comment.nvim',
    -- keys={
    --     {'', '<Leader>c'},
    --     {'', '<Leader>b'}
    -- },
    config=function()
        require('Comment').setup{
            mappings = {
                ---operator-pending mapping
                ---Includes `gcc`, `gcb`, `gc[count]{motion}` and `gb[count]{motion}`
                basic = true,
                ---extra mapping
                ---Includes `gco`, `gcO`, `gcA`
                extra = true,
                ---extended mapping
                ---Includes `g>`, `g<`, `g>[count]{motion}` and `g<[count]{motion}`
                extended = false,
            },

            ---LHS of toggle mapping in NORMAL + VISUAL mode
            ---@type table
            toggler = {
                ---line-comment keymap
                line = '<Leader>cc',
                ---block-comment keymap
                block = '<Leader>bc',
            },

            ---LHS of operator-pending mapping in NORMAL + VISUAL mode
            ---@type table
            opleader = {
                ---line-comment keymap
                line = '<Leader>c',
                ---block-comment keymap
                block = '<Leader>b',
            },
        }
    end
}
