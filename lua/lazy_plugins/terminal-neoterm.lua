return {
    'kassio/neoterm',
    cond = function() return not vim.o.diff end,
    -- cmd = {'Tnew', 'TRepl*'},
    init = function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('n', '<M-t>',     '<CMD>Tnew<CR>', opts)
        map('n', '<M-T>',     '<CMD>Tnew<CR>i', opts)
        -- map('n', '<Leader>s', '<CMD>TReplSendLine<CR>', opts)
        -- map('v', '<Leader>s', '<CMD>TReplSendSelection<CR>', opts)
    end,
    config=function()
        vim.g.neoterm_shell = '/usr/bin/fish'
        vim.g.neoterm_automap_keys = '<Leader>qm'
        vim.g.neoterm_repl_python = ''
    end
}
