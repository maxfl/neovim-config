function plugin_cfg#vimtex#post_source()
    let g:vimtex_view_method='zathura'
    let g:vimtex_imaps_enabled=0
    let g:vimtex_view_use_temp_files=1
    if exepath('nvr')!=''
        let g:vimtex_compiler_progname='nvr'
    endif
    noremap <localleader>lL <plug>(vimtex-compile-ss)
    noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>

    let g:vimtex_quickfix_ignore_filters = [
                \ '^Overfull \\.box',
                \ '^Underfull \\.box',
                \ 'Empty bibliography',
                \ 'inputenc package ignored with utf8 based engines'
                \ ]
endfunction
