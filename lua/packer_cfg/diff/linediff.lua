return {
    'AndrewRadev/linediff.vim',
    cmd = 'Linediff*',
    setup=function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('v', '<Leader>dl', ':Linediff<CR>', opts)
        map('n', '<Leader>dl', ':Linediff<CR>', opts)
        map('n', '<Leader>dr', ':LinediffReset<CR>', opts)
    end
}
