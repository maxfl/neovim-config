return {
    'direnv/direnv.vim',
    cmd = {'DirenvExport', 'EditEnvrc'},
    init = function()
        vim.g.direnv_auto=false
    end
}
