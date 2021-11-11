if &shell =~# 'fish$'
    set shell=/bin/bash
endif

autocmd VimEnter * call dein#call_hook('post_source')
set runtimepath-=~/.config/nvim
set runtimepath^=~/.config/nvim,~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin( expand('~/.cache/dein') )
let g:dein#types#git#clone_depth = 1
let g:dein#enable_name_conversion = 1

call dein#add('Shougo/dein.vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('ciaranm/detectindent', {
            \   'hook_post_source': "au FileType cpp,python :DetectIndent"
            \ })
" TODO: call dein#add('zsugabubus/crazy8.nvim') " detect indent
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spelling and grammar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('ron89/thesaurus_query.vim', {
            \ 'hook_add': 'let g:tq_map_keys = 0'
            \ })
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textobjects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('machakann/vim-sandwich', {
            \ 'normalized_name': 'sandwich',
            \ 'hook_post_source': function('plugin_cfg#sandwich#post_source')
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python folds
call dein#add('kalekundert/vim-coiled-snake', {
            \ 'normalized_name': 'coiled-snake',
            \ 'hook_add': 'let g:coiled_snake_set_foldexpr=0'
            \ })
call dein#add('joom/latex-unicoder.vim', { 'hook_add': "let g:unicoder_no_map=1" })
call dein#add('bfrg/vim-cpp-modern', { 'normalized_name': 'cpp-modern' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('eugen0329/vim-esearch', {
            \ 'normalized_name': 'esearch',
            \ 'hook_post_source': 'let g:esearch={"root_markers": []}'
            \ }) " \ff
call dein#add('qxxxb/vim-searchhi', {
            \ 'normalized_name': 'searchhi',
            \ 'hook_add': function("plugin_cfg#searchhi#add")
            \ })

call dein#end()


