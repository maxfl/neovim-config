return {
    'Yggdroot/indentLine',
    opt=true,
    cmd={'IndentLinesEnable', 'IndentLinesToggle'},
    config=function()
        vim.g.indentLine_enabled=0
        vim.cmd[[au FileType cpp,python :IndentLinesEnable]]
    end
}
