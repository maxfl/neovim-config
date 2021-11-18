return {
    'notomo/cmdbuf.nvim',
    keys={
        {'n', 'q:'},
        {'n', 'ql'},
        {'c', '<C-f>'},
    },
    setup=function()
        local map, noremap=vim.api.nvim_set_keymap, {noremap=true}
        map('n', 'Q:', 'q:', noremap)
    end,
    config=function()
        local map, noremap=vim.api.nvim_set_keymap, {noremap=true}
        map('n', 'q:', '<Cmd>lua require("cmdbuf").split_open(vim.o.cmdwinheight)<CR>', noremap)
        map('c', '<C-f>',
            [[<Cmd>lua require('cmdbuf').split_open(
                     \ vim.o.cmdwinheight,
                     \ {line = vim.fn.getcmdline(), column = vim.fn.getcmdpos()}
                     \ )<CR><C-c>]], noremap)
        map('', 'ql',
            [[<Cmd>lua require('cmdbuf').split_open(
                     \ vim.o.cmdwinheight,
                     \ {type = "lua/cmd"}
                     \ )<CR>]], noremap)
    end
}
