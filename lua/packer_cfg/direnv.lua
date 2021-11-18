return {
    'direnv/direnv.vim',
    cmd = {'DirenvExport', 'EditEnvrc'},
    setup=function()
        vim.g.direnv_auto=false
    end
}
