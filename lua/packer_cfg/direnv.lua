return {
    'direnv/direnv.vim',
    opt=true,
    cmd={'DirenvExport', 'EditEnvrc'},
    setup=function()
        vim.g.direnv_auto=false
    end
}
