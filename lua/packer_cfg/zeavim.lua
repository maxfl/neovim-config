return {
    'kabbamine/zeavim.vim',
    opt=true,
    cmd={'Zeavim*', 'Docset'},
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
