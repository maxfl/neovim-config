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
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('bfredl/nvim-miniyank', {'hook_add': "
            \ map p <Plug>(miniyank-autoput)\n
            \ map P <Plug>(miniyank-autoPut)\n
            \ map <Leader>n <Plug>(miniyank-cycle)\n
            \ map <Leader>yc <Plug>(miniyank-tochar)\n
            \ map <Leader>yl <Plug>(miniyank-toline)\n
            \ map <Leader>yb <Plug>(miniyank-toblock)\n
            \ "})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('kana/vim-submode', { 'normalized_name': 'submode', 'hook_post_source': "
            "\ call submode#enter_with('textmanip', 'x', '', '<Leader>Mm')\n
            "\ call submode#leave_with('textmanip', 'xn', '', '<Esc>')\n
            "\ call submode#map(       'textmanip', 'x', '', '>', '>>')\n
            "\ call submode#map(       'textmanip', 'x', '', '<', '<<')\n
            "\ ",
            "\ }) " does not work
" TODO: call dein#add('Iron-E/nvim-libmodal')

call dein#add('ciaranm/detectindent', {
            \   'hook_post_source': "au FileType cpp,python :DetectIndent"
            \ })
" TODO: call dein#add('zsugabubus/crazy8.nvim') " detect indent
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Documentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kabbamine/zeavim.vim', {
            \ 'lazy': 1,
            \ 'on_cmd': ['Zeavim', 'ZeavimV', 'Docset'],
            \ 'on_map': ['<Leader>z', '<Leader><Leader>z'],
            \ 'hook_add': '
            \ au filetype python :Docset python,matplotlib,scipy,numpy
            \ '
            \ }) "call zeal
call dein#add('rhysd/devdocs.vim', {
            \ 'on_cmd': ['DevDocs', 'DevDocsAll'],
            "\ 'on_map': ['<Leader>Z'],
            \ 'hook_post_source': '
            \ nmap <Leader>Z <Plug>(devdocs-under-cursor)
            \ '
            \ }) "call zeal
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
call dein#add('andymass/vim-matchup', { 'normalized_name': 'matchup' })
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
call dein#add('AndrewRadev/linediff.vim', { 'hook_add': "
            \ vmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dr :LinediffReset<CR>\n
            \ " })
call dein#add('rickhowe/spotdiff.vim')
call dein#add('rickhowe/diffchar.vim')
call dein#add('chrisbra/vim-diff-enhanced', { 'normalized_name': 'diff-enhanced' })
call dein#add('sindrets/diffview.nvim')

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menus
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-ctrlspace/vim-ctrlspace', {
            \ 'normalized_name': 'ctrlspace',
            \ 'hook_add': function("plugin_cfg#ctrlspace#add"),
            \ 'hook_post_source': function("plugin_cfg#ctrlspace#post_source")
            \ })

call dein#add('gelguy/wilder.nvim', { 'hook_post_source': "
            \ call wilder#setup({'modes': [':']})\n
            \ call wilder#set_option('renderer', wilder#popupmenu_renderer({'highlighter': wilder#basic_highlighter()}))\n
            \ " })
            " call wilder#setup({'modes': [':', '/', '?']})\n

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jsfaint/gen_tags.vim', { 'hook_add': "
            \ let g:loaded_gentags#gtags=1
            \ " })
call dein#add('vim-voom/voom', { 'hook_add': function("plugin_cfg#voom#add") })
call dein#add('majutsushi/tagbar', {
            \   'hook_add': function("plugin_cfg#tagbar#add"),
            \   'hook_post_source': function("plugin_cfg#tagbar#post_source")
            \ })
"call dein#add('wfxr/minimap.vim') " since neovim 0.5
"call dein#add('severin-lemaignan/vim-minimap')
"
call dein#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit (included in default scripts)
au FileType text,txt let b:match_words="“:”,‘:’,«:»,„:“"

