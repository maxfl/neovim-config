return {
    'kabbamine/zeavim.vim',
    -- cmd = {'Zeavim', 'Docset', 'Zeavim*'},
    -- ft = 'python',
    -- keys={
    --     {'n', '<Leader>z'},
    --     {'v', '<Leader>z'},
    --     -- {'n', '<Leader><Leader>z'}
    -- },
    init = function()
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
