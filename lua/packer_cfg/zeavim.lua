return {
    'kabbamine/zeavim.vim',
    cmd = {'Zeavim', 'Docset', 'Zeavim*'},
    keys={
        {'n', '<Leader>z'},
        {'v', '<Leader>z'},
        -- {'n', '<Leader><Leader>z'}
    },
    setup=function()
        vim.cmd[[
            au filetype python :Docset python,matplotlib,scipy,numpy,pandas
        ]]
    end,
    config=function()
        local map, opts=vim.api.nvim_set_keymap, {}
        map('n', '<Leader>z', '<Plug>Zeavim', opts)
        map('v', '<Leader>z', '<Plug>ZVVisSelection', opts)
    end
}
