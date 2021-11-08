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
call dein#add('rhysd/vim-grammarous', {
            \ 'normalized_name': 'grammarous',
            \ 'hook_add': "
            \ let g:grammarous#languagetool_cmd = 'languagetool'
            \ "
            \ })
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textobjects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('machakann/vim-sandwich', {
            \ 'normalized_name': 'sandwich',
            \ 'hook_post_source': function('plugin_cfg#sandwich#post_source')
            \ })

call dein#add('kana/vim-textobj-user', { 'normalized_name': 'textobj-user',  'hook_post_source': "
            \ call textobj#user#plugin('mylatex', {
            \                 'latex-amp': {
            \                   'pattern': [ '\\(&\\|^\\)\\s*', '\\s*\\(&\\|\\\\\\\\\\)' ],
            \                   'select-a': 'a&',
            \                   'select-i': 'i&'
            \                 },
            \               })
            \ " })
"call dein#add('haya14busa/vim-operator-flashy', { 'normalized_name': 'operator-flashy' })
call dein#add('kana/vim-textobj-line', { 'normalized_name': 'textobj-line'})
call dein#add('rhysd/vim-textobj-continuous-line', { 'normalized_name': 'textobj-continuous-line' })
call dein#add('glts/vim-textobj-comment', { 'normalized_name': 'textobj-comment' })
call dein#add('kana/vim-textobj-entire', { 'normalized_name': 'textobj-entire', 'hook_add': function('plugin_cfg#textobj#entire_add') })
call dein#add('kana/vim-textobj-indent', { 'normalized_name': 'textobj-indent' })
call dein#add('sgur/vim-textobj-parameter', { 'normalized_name': 'textobj-parameter', 'hook_add': function('plugin_cfg#textobj#parameter_add') })
call dein#add('machakann/vim-textobj-functioncall', { 'normalized_name': 'textobj-functioncall', 'hook_add': function('plugin_cfg#textobj#functioncall_add') })
call dein#add('kana/vim-textobj-function', { 'normalized_name': 'textobj-function' })
call dein#add('bps/vim-textobj-python', { 'normalized_name': 'textobj-python', 'hook_add': function('plugin_cfg#textobj#python_add')})
call dein#add('jceb/vim-textobj-uri', { 'normalized_name': 'textobj-uri' })
call dein#add('glts/vim-textobj-indblock', { 'normalized_name': 'textobj-indblock' })
call dein#add('kana/vim-textobj-datetime', { 'normalized_name': 'textobj-datetime' })
"call dein#add('rbonvall/vim-textobj-latex', { 'normalized_name': 'textobj-latex' })
call dein#add('thinca/vim-textobj-between', { 'normalized_name': 'textobj-between',  'hook_add': function('plugin_cfg#textobj#between_add')})

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Text manipulation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('AndrewRadev/switch.vim', {
            "\ 'normalized_name': 'switch',
            "\ 'hook_add': function('plugin_cfg#switch#add'),
            "\ 'hook_post_source': function('plugin_cfg#switch#post_source')
            "\ })
call dein#add('bootleq/vim-cycle', {
            \ 'hook_add': function('plugin_cfg#cycle#add'),
            \ 'hook_post_source': function('plugin_cfg#cycle#post_source'),
            \ })
call dein#add('t9md/vim-textmanip', {
            \ 'normalized_name': 'textmanip',
            \ 'hook_add': function('plugin_cfg#textmanip#add'),
            \ 'hook_post_source': function('plugin_cfg#textmanip#post_source'),
            \ })
" depends: vim-submode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('chrisbra/vim-diff-enhanced', { 'normalized_name': 'diff-enhanced' })

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
"call dein#add('direnv/direnv.vim')

call dein#add('plasticboy/vim-markdown', {
            \ 'normalized_name': 'markdown',
            \ 'hook_add': "au BufRead,BufEnter /tmp/qutebrowser-editor-* setl ft=markdown spell"
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('eugen0329/vim-esearch', {
            \ 'normalized_name': 'esearch',
            \ 'hook_post_source': 'let g:esearch={"root_markers": []}'
            \ }) " \ff
call dein#add('t9md/vim-quickhl', {
            \ 'normalized_name': 'quickhl',
            \ 'hook_add': function("plugin_cfg#quickhl#add")
            \ })
call dein#add('qxxxb/vim-searchhi', {
            \ 'normalized_name': 'searchhi',
            \ 'hook_add': function("plugin_cfg#searchhi#add")
            \ })

call dein#end()


