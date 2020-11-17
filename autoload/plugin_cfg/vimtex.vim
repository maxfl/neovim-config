function! VimtexZathuraHook(status)
  echom a:status
endfunction

function plugin_cfg#vimtex#post_source()
    let g:vimtex_view_method='zathura'
    " let g:vimtex_view_method='mupdf'
    let g:vimtex_imaps_enabled=0
    let g:vimtex_index_split_width=60
    if exepath('nvr')!=''
        let g:vimtex_compiler_progname='nvr'
    endif
    " if exepath('pplatex')!=''
    "   let g:vimtex_quickfix_method='pplatex'
    " endif
    let g:vimtex_index_split_pos='vert botright'
    noremap <localleader>lL <plug>(vimtex-compile-ss)
    noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>

    "let g:vimtex_quickfix_latexlog = { 'default' : 0 }

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
