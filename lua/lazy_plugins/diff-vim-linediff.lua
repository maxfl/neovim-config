return {
    'AndrewRadev/linediff.vim',
    init = function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('x', '<Leader>dl', ':Linediff<CR>', opts)
        map('n', '<Leader>dl', ':Linediff<CR>', opts)
        map('n', '<Leader>dr', ':LinediffReset<CR>', opts)
    end
}
