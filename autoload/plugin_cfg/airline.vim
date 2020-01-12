function plugin_cfg#airline#add()
    let g:airline#extensions#wordcount#filetypes='\\vmarkdown|text|txt'
    let g:airline_detect_iminsert=1
    let g:airline_powerline_fonts=1
    let g:airline_section_y = '%{printf("%s%s%s",(&fenc=="utf-8")?"":&fenc,(&ff=="unix")?"":" [".&ff."]",&et?"":" [t]")}'
    let g:airline_section_z0 = '%-4b %-5(0x%B%)'
    let g:airline_section_z = '%3P %{g:airline_symbols.linenr} %3l:%3c'
    let g:airline_mode_map = {
                \   '__' : '-',
                \   'c'  : 'C',
                \   'i'  : 'I',
                \   'ic' : 'I',
                \   'ix' : 'I',
                \   'n'  : 'N',
                \   'ni' : 'N',
                \   'no' : 'N',
                \   'R'  : 'R',
                \   'Rv' : 'R',
                \   's'  : 'S',
                \   'S'  : 'S',
                \   '' : 'S',
                \   't'  : 'T',
                \   'v'  : 'V',
                \   'V'  : 'V',
                \   '' : 'V',
                \ }
    let g:airline#extensions#default#section_truncate_width = {
                \   'b':  88,
                \   'x':  70,
                \   'z0': 60,
                \   'z':  45,
                \ }
    let g:airline#extensions#default#layout = [
    \   [ 'a', 'b', 'c' ],
    \   [ 'x', 'y', 'z', 'warning' ]
    \ ]
    let g:airline#extensions#xkblayout#enabled=0
    let g:airline#extensions#keymap#enabled=0
endfunction

function plugin_cfg#airline#post_source()
    autocmd User VimtexEventInitPost :AirlineRefresh
endfunction
