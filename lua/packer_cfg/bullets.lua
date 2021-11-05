return {
    'dkarter/bullets.vim',
    -- opt=true,
    -- ft={'markdown', 'rst', 'text', 'txt', 'gitcommit'},
    setup=function()
        vim.g.bullets_enabled_file_types={'markdown', 'rst', 'text', 'txt', 'gitcommit'}
    end
}
