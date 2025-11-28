return {
    'dkarter/bullets.vim',
    ft={
        'markdown',
        'rst',
        'text',
        'txt',
        'gitcommit'
    },
    init = function()
        vim.g.bullets_enabled_file_types={
            'markdown',
            'rst',
            'text',
            'txt',
            'gitcommit'
        }
       vim.g.bullets_outline_levels = {
           'ROM',
           'ABC',
           'num',
           'abc',
           'rom',
           'std-',
           'std*',
           'std+'
       }
    end
}
