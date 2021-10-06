function! VimtexZathuraHook(status)
  echom a:status
endfunction

function plugin_cfg#vimtex#post_source()
    let g:vimtex_view_method='zathura'
    "let g:vimtex_view_method='mupdf'
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

    "let g:vimtex_compiler_method='latexrun'
    "augroup texcompile
        "autocmd!
        "autocmd BufWritePost *.tex silent VimtexCompile
    "augroup END

    "let g:vimtex_index_split_width=60
    "let g:vimtex_index_split_pos='vert botright'

    " let g:neocomplete#sources#omni#input_patterns.tex =
    " '\v\\%('
    " . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    " . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
    " . '|hyperref\s*\[[^]]*'
    " . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    " . '|%(include%(only)?|input)\s*\{[^}]*'
    " . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
    " . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
    " . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
    " . '|usepackage%(\s*\[[^]]*\])?\s*\{[^}]*'
    " . '|documentclass%(\s*\[[^]]*\])?\s*\{[^}]*'
    " . ')'

    "let g:vimtex_compiler_callback_hooks = ['VimtexZathuraHook']
endfunction
