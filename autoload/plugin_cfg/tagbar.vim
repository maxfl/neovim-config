function plugin_cfg#tagbar#add()
    nnoremap <silent> <Leader>wt :TagbarToggle<CR>
    command! -nargs=0 TagbarToggle call tagbar#ToggleWindow()
endfunction

function plugin_cfg#tagbar#post_source()
    let g:tagbar_autoclose = 1
    let g:tagbar_compact = 1
    let g:tagbar_autofocus = 1
    let g:tagbar_autoshowtag = 1
    let g:tagbar_type_tex = {
                \   'ctagstype': 'latex',
                \   'kinds': [
                \      's:sections',
                \      'g:graphics',
                \      'l:labels',
                \      'r:refs:1',
                \      'p:pagerefs:1',
                \      'f:includes'
                \   ],
                \   'sort'    : 0,
                \ }
    let g:tagbar_type_make = {
                \ 'ctagstype': 'make',
                \ 'kinds':  ['m:macros', 't:task'],
                \ 'sort': 0,
                \ }
endfunction
