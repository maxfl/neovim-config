return {
    'kabbamine/zeavim.vim',
    cmd = {'Zeavim', 'Docset', 'Zeavim*'},
    keys={
        {'n', '<Leader>z'},
        {'n', '<Leader><Leader>z'}
    },
    setup=function()
        vim.cmd[[
            au filetype python :Docset python,matplotlib,scipy,numpy
        ]]
    end
}
