return {
    'lervag/vimtex',
    opt=true,
    ft={'tex', 'plaintex'},
    config=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}

        vim.g.vimtex_view_method='zathura'
        --vim.g.vimtex_imaps_enabled=0
        vim.g.vimtex_view_use_temp_files=1

        if vim.fn.exepath('nvr')~='' then
            vim.g.vimtex_compiler_progname='nvr'
        end
        map('', '<localleader>lL', '<plug>(vimtex-compile-ss)', noremap)
        map('', '<localleader>l0', '<CMD>let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>', noremap)

        vim.g.vimtex_quickfix_ignore_filters = {
            '^Overfull \\.box',
            '^Underfull \\.box',
            'Empty bibliography',
            'inputenc package ignored with utf8 based engines'
        }

        vim.g.vimtex_imaps_leader='/'
    end
}
