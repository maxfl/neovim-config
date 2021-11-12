return {
    'Yggdroot/indentLine',
    opt=true,
    cmd='IndentLines*',
    config=function()
        vim.g.indentLine_enabled=false
        vim.cmd[[au FileType cpp,python :IndentLinesEnable]]
    end
}
