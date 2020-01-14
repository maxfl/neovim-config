function plugin_cfg#syntastic#add()
    let g:syntastic_mode_map = {
                \ 'mode': 'passive',
                \ 'active_filetypes': [],
                \ 'passive_filetypes': []
                \ }
    let g:syntastic_ignore_files = ['^/usr/include/', '\.C$']
    if executable( 'clang++' )
        let g:syntastic_cpp_compiler = 'clang++'
    endif
    let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
    let g:syntastic_python_checkers = [ 'python' ]
    nmap <silent> <Leader>we :Errors<CR>
endfunction

