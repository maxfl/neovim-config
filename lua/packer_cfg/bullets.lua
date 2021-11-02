return {
    'dkarter/bullets.vim',
    setup=function()
        vim.g.bullets_enabled_file_types={'markdown', 'rst', 'text', 'txt', 'gitcommit'}
    end,
    opt=true, ft={'markdown', 'rst', 'text', 'txt', 'gitcommit'}
}
