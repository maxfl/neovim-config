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
call dein#add('wsdjeg/dein-ui.vim', {
            \ 'depends': 'dein',
            \ 'lazy': 1,
            \ 'on_cmd': 'DeinUpdate'
            \ })
call dein#add('haya14busa/dein-command.vim', {
            \ 'depends': 'dein',
            \ 'lazy': 1,
            \ 'on_cmd': 'Dein'
            \ })
call dein#add('tpope/vim-sensible', { 'normalized_name': 'sensible' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Libraries
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('inkarkat/vim-ingo-library', { 'normalized_name': 'ingo-library'})
call dein#add('inkarkat/vim-CountJump',    {
            \ 'normalized_name': 'CountJump',
            \ 'depends': 'ingo-library'
            \ })
call dein#add('inkarkat/vim-SyntaxRange',  {
            \ 'normalized_name': 'SyntaxRange',
            \ 'depends': 'ingo-library'
            \ })
call dein#add('tpope/vim-repeat', { 'normalized_name': 'repeat' })
call dein#add('inkarkat/vim-visualrepeat', { 'normalized_name': 'visualrepeat' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface and highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jonathanfilip/vim-lucius', {
            \ 'normalized_name': 'lucius',
            \ 'hook_post_source': "
            \     colorscheme lucius\n
            \     LuciusBlack\n
            \ "})

" fade unfocused buffers
call dein#add('tadaa/vimade', {'hook_add': "
            \ let g:vimade = {}\n
            \ let g:vimade.fadelevel = 0.7\n
            \ let g:vimade.usecursorhold=1\n
            \ "})
call dein#add('powerman/vim-plugin-AnsiEsc', { 'normalized_name': 'plugin-AnsiEsc', 'lazy': 1, 'on_cmd': 'AnsiEsc'})

"
" Cursor highlight
"
call dein#add('danilamihailov/beacon.nvim', {'hook_add': "
            \ let g:beacon_timeout=1500\n
            \ let g:beacon_shrink=0\n
            \ let g:beacon_fade=0\n
            \ "})

call dein#add('machakann/vim-highlightedyank', { 'normalized_name': 'highlightedyank' })

"
" Windows and menus
"

call dein#add('skywind3000/vim-quickui', { 'normalized_name': 'quickui',
            \ 'hook_add':         function('plugin_cfg#quickui#add'),
            \ 'hook_post_source': function('plugin_cfg#quickui#post_source'),
            \ 'lazy': 1,
            \ 'on_func': 'quickui#menu#open'
            \ })

call dein#add('ncm2/float-preview.nvim', {'hook_add': "
            \ let g:float_preview#docked=1\n
            \ set completeopt+=preview\n
            \ "})

"
" Statusline
"
call dein#add('vim-airline/vim-airline', {
            \ 'normalized_name': 'airline',
            \ 'depends': 'tagbar',
            \ 'hook_add': function('plugin_cfg#airline#add'),
            \ 'hook_post_source': function('plugin_cfg#airline#post_source')
            \ })
call dein#add('paranoida/vim-airlineish', { 'normalized_name': 'airlineish' })

"
" Indentation
"
" FIXME: almost not used
call dein#add('thiagoalessio/rainbow_levels.vim', { 'lazy': 1, 'on_cmd': 'RainbowLevelsToggle' })
call dein#add('kien/rainbow_parentheses.vim',     { 'lazy': 1, 'on_cmd': 'RainbowParenthesesToggle' })
call dein#add('Yggdroot/indentLine',              { 'hook_add': "
            \ let g:indentLine_enabled=0\n
            \ au FileType cpp,python :IndentLinesEnable\n
            \ ",
            \ 'lazy': 1, 'on_cmd': ['IndentLinesEnable', 'IndentLinesToggle' ]
            \ })
call dein#add('nathanaelkane/vim-indent-guides',  { 'normalized_name': 'indent-guides',
            \ 'lazy': 1, 'on_cmd': ['IndentGuidesEnable', 'IndentGuidesToggle' ]
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows and splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('t9md/vim-choosewin', { 'normalized_name': 'choosewin',  'hook_add': "nmap <leader>-  <Plug>(choosewin)",
            \ 'lazy': 0, 'on_map': '<Plug>(choosewin)'})
call dein#add('romgrk/winteract.vim', { 'hook_add': "nmap <leader>w :InteractiveWindow<CR>",
            \ 'lazy': 0, 'on_cmd': 'InteractiveWindow'})
call dein#add('fabi1cazenave/suckless.vim', {
            \ 'hook_add': "
            \ let g:suckless_tabline=0\n
            \ let g:suckless_guitablabel=0",
            \ 'hook_post_source': "
            \ nmap <M--> :tabprev<CR>\n
            \ nmap <M-=> :tabnext<CR>\n
            \ nmap <M-+> :tabnew<CR>\n
            \" })
call dein#add('voldikss/vim-floaterm', { 'normalized_name': 'floaterm',  'on_cmd': 'FloatermToggle', 'hook_add': "
            \ noremap  <silent> <F12> :FloatermToggle<CR>\n
            \ noremap! <silent> <F12> <Esc>:FloatermToggle<CR>\n
            \ tnoremap <silent> <F12> <C-\\><C-n>:FloatermToggle<CR>\n
            \ let g:floaterm_shell='fish'\n
            \ "})

"call dein#add('camspiers/animate.vim')
"call dein#add('camspiers/lens.vim', {'depends': 'animate', 'hook_add': "
            "\ let g:lens#height_resize_max = 40\n
            "\ let g:lens#width_resize_max = 100\n
            "\ "})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jiangmiao/auto-pairs', {
            \ 'hook_add': function("plugin_cfg#autopairs#add"),
            \ 'hook_post_source': function("plugin_cfg#autopairs#post_source")
            \ })
call dein#add('honza/vim-snippets', { 'normalized_name': 'snippets' })
call dein#add('SirVer/ultisnips', { 'hook_add': "
            \ let g:UltiSnipsExpandTrigger='<Tab>'\n
            \ let g:UltiSnipsJumpForwardTrigger='<Tab>'\n
            \ let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'\n
            \ " })
call dein#add('tpope/vim-endwise', { 'normalized_name': 'endwise' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kopischke/vim-fetch', { 'normalized_name': 'fetch' })                                                               " jump to file:line:col
call dein#add('tmhedberg/indent-motion')
call dein#add('Lokaltog/vim-easymotion', { 'normalized_name': 'easymotion',  'hook_add': "
            \ map <Leader>m <Plug>(easymotion-prefix)\n
            \ nnoremap <Leader>m. <Plug>(easymotion-repeat)
            \ ",
            \ 'lazy': 0,
            \ 'on_map': '<Plug>(easymotion-'
            \ })
                                                                                                   " clefer f/F/t/T mappings
call dein#add('rhysd/clever-f.vim', { 'hook_add': "
            \ nnoremap <Leader>fr <Plug>(clever-f-reset)\n
            \ nnoremap ; <Plug>(clever-f-repeat-forward)\n
            \ \"nnoremap , <Plug>(clever-f-repeat-back)\n
            \ "})
call dein#add('bkad/camelcasemotion', { 'hook_post_source': "
            \ call camelcasemotion#CreateMotionMappings(',')
            \ " })
call dein#add('inkarkat/vim-JumpToVerticalBlock', { 'normalized_name': 'JumpToVerticalBlock', 'depends': 'CountJump'})
call dein#add('inkarkat/vim-JumpToVerticalOccurrence', { 'normalized_name': 'JumpToVerticalOccurrence', 'depends': 'CountJump'})
call dein#add('inkarkat/vim-EnhancedJumps', {
            \ 'normalized_name': 'EnhancedJumps',
            \ 'depends': 'ingo-library',
            \ 'hook_add': function("plugin_cfg#EnhancedJumps#add")
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-scripts/RepeatableYank')                                           "karkat
call dein#add('vim-scripts/ExplainPattern')
call dein#add('bfredl/nvim-miniyank', {'hook_add': "
            \ map p <Plug>(miniyank-autoput)\n
            \ map P <Plug>(miniyank-autoPut)\n
            \ map <Leader>n <Plug>(miniyank-cycle)\n
            \ map <Leader>yc <Plug>(miniyank-tochar)\n
            \ map <Leader>yl <Plug>(miniyank-toline)\n
            \ map <Leader>yb <Plug>(miniyank-toblock)\n
            \ "})
call dein#add('inkarkat/vim-ReplaceWithRegister', { 'normalized_name': 'ReplaceWithRegister',  'depends': ['repeat', 'visualrepeat'] })
call dein#add('inkarkat/vim-UnconditionalPaste', { 'normalized_name': 'UnconditionalPaste',  'depends': ['ingo-library', 'repeat'] })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('dkarter/bullets.vim', { 'hook_post_source': "
            \ let g:bullets_enabled_file_types=['markdown', 'rst', 'text', 'txt', 'gitcommit']\n
            \ " })
call dein#add('sjl/gundo.vim', { 'hook_add': "
            \ nnoremap <Leader>wu :GundoToggle<CR>\n
            \ let g:gundo_preview_bottom=1\n
            \ let g:gundo_width=30\n
            \ let g:gundo_right=1\n
            \ ",
            \ 'lazy': 1, 'on_cmd': 'GundoToggle'
            \ })
call dein#add('bronson/vim-trailing-whitespace', { 'normalized_name': 'trailing-whitespace',  'hook_post_source': "
            \ nnoremap <Leader>rts :FixWhitespace<CR>\n
            \ autocmd BufWritePre *.py,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace\n
            \ " })

call dein#add('Shougo/deoplete.nvim', {
            \ 'hook_add': "
            \   let g:deoplete#enable_at_startup = 1\n
            \ ",
            \ 'hook_post_source': "
            \   call deoplete#custom#option('auto_refresh_delay', 200)\n
            \   call deoplete#custom#option('smart_case', v:true)\n
            \   inoremap <expr><C-X><C-X> deoplete#manual_complete() \n
            \ ",
            \ 'depends': 'float-preview.nvim'})
call dein#add('mg979/vim-visual-multi', { 'normalized_name': 'visual-multi' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kana/vim-submode', { 'normalized_name': 'submode', 'hook_post_source': "
            \ call submode#enter_with('textmanip', 'x', '', '<Leader>Mm')\n
            \ call submode#leave_with('textmanip', 'xn', '', '<Esc>')\n
            \ call submode#map(       'textmanip', 'x', '', '>', '>>')\n
            \ call submode#map(       'textmanip', 'x', '', '<', '<<')\n
            \ ",
            \ })
" TODO: call dein#add('Iron-E/nvim-libmodal')

call dein#add('vim-scripts/RelativeNumberCurrentWindow')
call dein#add('vim-scripts/RangeMacro') " karkat
call dein#add('wgurecky/vimSum', { 'lazy': 1, 'on_cmd': ['VisSum', 'VisMean', 'VisMult'] })
"call dein#add('Floobits/floobits-neovim')

call dein#add('moll/vim-bbye', { 'normalized_name': 'bbye',  'hook_add': "
            \ nnoremap ZQ :Bdelete<CR>\n
            \ nnoremap ZZ :write<CR>:Bdelete<CR>\n
            \ nnoremap <Leader>ZZ ZZ\n
            \ nnoremap <Leader>ZQ ZQ\n
            \ ",
            \ 'lazy': 1, 'on_cmd': 'Bdelete'
            \ })
call dein#add('rbgrouleff/bclose.vim') " same as bbye, required by ranger
" call dein#add('nhooyr/neoman.vim')
call dein#add('thinca/vim-prettyprint', { 'normalized_name': 'prettyprint', 'lazy': 1, 'on_cmd': ['PrettyPrint', 'PP']})
call dein#add('ciaranm/detectindent', {
            \   'hook_post_source': "au FileType cpp,python :DetectIndent"
            \ })
" TODO: call dein#add('zsugabubus/crazy8.nvim') " detect indent
call dein#add('kabbamine/zeavim.vim', {
            \ 'lazy': 1,
            \ 'on_cmd': ['Zeavim', 'ZeavimV', 'Docset'],
            \ 'on_map': ['<Leader>z', '<Leader><Leader>z'],
            \ 'hook_add': '
            \ au filetype python :Docset python,matplotlib,scipy,numpy
            \ '
            \ }) "call zeal
call dein#add('https://gitlab.com/neonunux/vim-open-or-create-path-and-file.git', { 'normalized_name': 'open-or-create-path-and-file', 'lazy': 1, 'on_cmd': 'OpenOrCreateFile'})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('chrisbra/unicode.vim') " , {'lazy': 1, 'on_cmd': ['UnicodeSearch', 'Digraph', 'UnicodeTable', 'UnicodeName']}
call dein#add('Konfekt/vim-unicode-homoglyphs', { 'normalized_name': 'unicode-homoglyphs',  'hook_source': "let g:is_homoglyph_on=0", 'lazy': 1 })
call dein#add('segeljakt/vim-isotope', {'normalized_name': 'isotope'}, {'hook_add': 'let g:isotope_use_default_mappings = 0'})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spelling and grammar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call dein#add('ron89/thesaurus_query.vim', {
            \ 'hook_add': 'let g:tq_map_keys = 0'
            \ })
"call dein#add('dpelle/vim-languagetool', {
            "\ 'normalized_name': 'languagetool',
            "\ 'hook_add': "
            "\ let g:languagetool_jar='/usr/share/java/languagetool/languagetool-commandline.jar'
            "\ "
            "\ })
call dein#add('rhysd/vim-grammarous', {
            \ 'normalized_name': 'grammarous',
            \ 'hook_add': "
            \ let g:grammarous#languagetool_cmd = 'languagetool'
            \ "
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VCS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-fugitive', {
            \   'normalized_name': 'fugitive',
            \   'hook_post_source': function("plugin_cfg#fugitive#post_source")
            \ })
call dein#add('idanarye/vim-merginal', { 'normalized_name': 'merginal', 'lazy': 1, 'on_cmd': ['Merginal', 'MerginalToggle']})
call dein#add('inkarkat/vim-ConflictDetection', {
            \ 'normalized_name': 'ConflictDetection',
            \ 'depends': 'ingo-library'
            \ })
call dein#add('inkarkat/vim-ConflictMotions', {
            \ 'normalized_name': 'ConflictMotions',
            \ 'depends': ['ingo-library', 'CountJump', 'repeat', 'visualrepeat'],
            \ 'hook_add': 'let g:ConflictMotions_TakeMappingPrefix = "<Leader>="'
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
call dein#add('kana/vim-textobj-entire', { 'normalized_name': 'textobj-entire',
            \ 'hook_add': "
            \ let g:textobj_entire_no_default_key_mappings=1\n
            \ xmap iE <Plug>(textobj-entire-i)\n
            \ omap iE <Plug>(textobj-entire-i)\n
            \ xmap aE <Plug>(textobj-entire-a)\n
            \ omap aE <Plug>(textobj-entire-a)\n
            \ " })
call dein#add('kana/vim-textobj-indent', { 'normalized_name': 'textobj-indent' })
call dein#add('sgur/vim-textobj-parameter', { 'normalized_name': 'textobj-parameter',  'hook_add': "
            \ let g:textobj_parameter_no_default_key_mappings=1\n
            \ xmap a. <Plug>(textobj-parameter-a)\n
            \ omap a. <Plug>(textobj-parameter-a)\n
            \ xmap i. <Plug>(textobj-parameter-i)\n
            \ omap i. <Plug>(textobj-parameter-i)\n
            \ " })
call dein#add('machakann/vim-textobj-functioncall', { 'normalized_name': 'textobj-functioncall',  'hook_add': "
            \ let g:textobj_functioncall_no_default_key_mappings = 1\n
            \ xmap i@ <Plug>(textobj-functioncall-i)\n
            \ omap i@ <Plug>(textobj-functioncall-i)\n
            \ xmap a@ <Plug>(textobj-functioncall-a)\n
            \ omap a@ <Plug>(textobj-functioncall-a)\n
            \ " })
call dein#add('kana/vim-textobj-function', { 'normalized_name': 'textobj-function' })
call dein#add('bps/vim-textobj-python', { 'normalized_name': 'textobj-python',  'hook_add': "
            \ xmap aF <Plug>(textobj-python-function-a)\n
            \ omap aF <Plug>(textobj-python-function-a)\n
            \ xmap iF <Plug>(textobj-python-function-i)\n
            \ omap iF <Plug>(textobj-python-function-i)\n
            \ xmap aP <Plug>(textobj-python-class-a)\n
            \ omap aP <Plug>(textobj-python-class-a)\n
            \ xmap iP <Plug>(textobj-python-class-i)\n
            \ omap iP <Plug>(textobj-python-class-i)\n
            \ " })
call dein#add('jceb/vim-textobj-uri', { 'normalized_name': 'textobj-uri' })
call dein#add('glts/vim-textobj-indblock', { 'normalized_name': 'textobj-indblock' })
call dein#add('kana/vim-textobj-datetime', { 'normalized_name': 'textobj-datetime' })
"call dein#add('rbonvall/vim-textobj-latex', { 'normalized_name': 'textobj-latex' })
call dein#add('thinca/vim-textobj-between', { 'normalized_name': 'textobj-between',  'hook_add': "
            \ let g:textobj_between_no_default_key_mappings=1\n
            \ xmap a_ <Plug>(textobj-between-a)\n
            \ omap a_ <Plug>(textobj-between-a)\n
            \ xmap i_ <Plug>(textobj-between-i)\n
            \ omap i_ <Plug>(textobj-between-i)\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('AndrewRadev/switch.vim', {
            "\ 'normalized_name': 'switch',
            "\ 'hook_add': function('plugin_cfg#switch#add'),
            "\ 'hook_post_source': function('plugin_cfg#switch#post_source')
            "\ })
call dein#add('bootleq/vim-cycle', {
            \ 'hook_add': function('plugin_cfg#cycle#add'),
            \ 'hook_post_source': function('plugin_cfg#cycle#post_source'),
            \ })
call dein#add('scrooloose/nerdcommenter')
call dein#add('t9md/vim-textmanip', {
            \ 'normalized_name': 'textmanip',
            \ 'hook_add': function('plugin_cfg#textmanip#add'),
            \ 'hook_post_source': function('plugin_cfg#textmanip#post_source'),
            \ "depends": "vim-submode"
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tables
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('dhruvasagar/vim-table-mode', {
            \ 'normalized_name': 'table-mode',
            \ 'hook_add': "let g:table_mode_corner_corner='+'"
            \ })
call dein#add('junegunn/vim-easy-align', {
            \ 'normalized_name': 'easy-align',
            \ 'hook_add': function("plugin_cfg#easy_align#add")
            \ })
call dein#add('salsifis/vim-transpose', {
            \ 'normalized_name': 'transpose',
            \ 'hook_add': "vmap <silent> <leader>et :TransposeInteractive<CR>"
            \ })
call dein#add('inkarkat/vim-AdvancedSorters', {
            \ 'normalized_name': 'AdvancedSorters'
            \ })
"call dein#add('mipmip/vim-scimark')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('will133/vim-dirdiff', { 'normalized_name': 'dirdiff',  'hook_add': "
            \ map <unique> <Leader>Dg <Plug>DirDiffGet\n
            \ map <unique> <Leader>Dp <Plug>DirDiffPut\n
            \ map <unique> <Leader>Dj <Plug>DirDiffNext\n
            \ map <unique> <Leader>Dk <Plug>DirDiffPrev\n
            \ " })
call dein#add('AndrewRadev/linediff.vim', { 'hook_add': "
            \ vmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dr :LinediffReset<CR>\n
            \ " })
call dein#add('rickhowe/spotdiff.vim')
call dein#add('rickhowe/diffchar.vim', { 'hook_add': "let g:DiffModeSync=0" })
call dein#add('chrisbra/vim-diff-enhanced', { 'normalized_name': 'diff-enhanced' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kalekundert/vim-coiled-snake', { 'normalized_name': 'coiled-snake' })
call dein#add('lervag/wiki.vim', { 'hook_add': "let g:wiki_mappings_use_defaults=0" })
call dein#add('lervag/wiki-ft.vim', { 'depends': 'wiki'})
call dein#add('joom/latex-unicoder.vim', { 'hook_add': "let g:unicoder_no_map=1" })
call dein#add('dag/vim-fish', { 'normalized_name': 'fish' })
call dein#add('plasticboy/vim-markdown', {
            \ 'normalized_name': 'markdown',
            \ 'hook_add': "au BufRead,BufEnter /tmp/qutebrowser-editor-* setl ft=markdown spell"
            \ })
call dein#add('JuliaEditorSupport/julia-vim')
call dein#add('bfrg/vim-cpp-modern', { 'normalized_name': 'cpp-modern' })
call dein#add('vim-scripts/ebnf.vim')
"call dein#add('direnv/direnv.vim')

call dein#add('lervag/vimtex', { 'hook_post_source': function("plugin_cfg#vimtex#post_source" ), 'merged': 0})
call dein#add('KeitaNakamura/tex-conceal.vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('brooth/far.vim')        " :Far
call dein#add('eugen0329/vim-esearch', { 'normalized_name': 'esearch' }) " \ff
call dein#add('tpope/vim-abolish', { 'normalized_name': 'abolish' })     " :%S////
call dein#add('t9md/vim-quickhl', {
            \ 'normalized_name': 'quickhl',
            \ 'hook_add': function("plugin_cfg#quickhl#add")
            \ })
call dein#add('qxxxb/vim-searchhi', {
            \ 'normalized_name': 'searchhi',
            \ 'hook_add': function("plugin_cfg#searchhi#add")
            \ })
call dein#add('inkarkat/vim-ExtractMatches', { 'normalized_name': 'ExtractMatches',  'depends': 'ingo-library' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menus
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-ctrlspace/vim-ctrlspace', { 'normalized_name': 'ctrlspace',  'hook_add': "
            \ let g:CtrlSpaceSetDefaultMapping=1\n
            \ let g:CtrlSpaceUseTabline=1\n
            \ let g:CtrlSpaceDefaultMappingKey='<C-Space> '\n
            \ nmap <M-u>    :CtrlSpaceGoUp<CR>\n
            \ nmap <M-S-u>  :CtrlSpaceGoDown<CR>\n
            \ " })
call dein#add('lifepillar/vim-cheat40', { 'normalized_name': 'cheat40' }) " \? for cheatsheet
call dein#add('ctrlpvim/ctrlp.vim', {'hook_add': "
            \ let g:ctrlp_working_path_mode='c'\n
            \ let g:ctrlp_cmd='CtrlPMRUFiles'
            \ "})
call dein#add('pechorin/any-jump.vim', { 'normalized_name': 'any-jump' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('xolox/vim-easytags', { 'normalized_name': 'easytags',  'hook_add': "
            "\ let g:easytags_file='./tags'\n
            "\ let g:easytags_ignored_filetypes=''\n
            "\ let g:easytags_on_cursorhold = 0\n
            "\ let g:easytags_auto_update = 0\n
            "\ let g:easytags_updatetime_min = 600000\n
            "\ " })
call dein#add('jsfaint/gen_tags.vim', { 'hook_add': "
            \ let g:loaded_gentags#gtags=1
            \ " })
call dein#add('vim-voom/voom', { 'hook_add': "
            \ let g:voom_ft_modes = { 'python':'python', 'tex':'latex' }\n
            \ let g:voom_tree_width = 60\n
            \ let g:voom_tree_placement='right'\n
            \ nmap <silent> <Leader>wo :VoomToggle<CR>\n
            \ " })
call dein#add('majutsushi/tagbar', {
            \   'hook_add': function("plugin_cfg#tagbar#add"),
            \   'hook_post_source': function("plugin_cfg#tagbar#post_source")
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and Folders
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-scripts/Rename')
call dein#add('chrisbra/SudoEdit.vim', { 'hook_add': "inoremap <S-F2> :SudoWrite<CR>" })
call dein#add('ervandew/archive')
"call dein#add('xolox/vim-misc', { 'normalized_name': 'misc' })
"call dein#add('xolox/vim-shell', { 'normalized_name': 'shell',  'depends': 'vim-misc', 'hook_add' : "
            "\ let g:shell_mappings_enabled = 0\n
            "\ let g:shell_fullscreen_items = 'mTe'\n
            "\ nnoremap <Leader>op :Open<CR>\n
            "\ nnoremap <Leader>if :Fullscreen<CR>\n
            "\ " })
call dein#add('itchyny/vim-external', { 'normalized_name': 'external', 'hook_add': "
            \ map <Leader>oe <Plug>(external-editor)\n
            \ map <Leader>oo <Plug>(external-explorer)\n
            \ map <Leader>ob <Plug>(external-browser)\n
            \ "})
"call dein#add('francoiscabrol/ranger.vim', { 'hook_add' : "
            "\ let g:ranger_replace_netrw = 0\n
            "\ let g:NERDTreeHijackNetrw = 0\n
            "\ nnoremap <silent> <M-r> :RangerCurrentFile<CR>\n
            "\ nnoremap <silent> <M-R> :RangerWorkingDirectory<CR>\n
            "\ ",
            "\ 'depends' : 'bclose'
            "\} )

call dein#add('kevinhwang91/rnvimr', {
            \ 'hook_post_update': "call system('make install')",
            \ 'hook_post_source': "
            \   map <F11> :RnvimrToggle<CR>\n
            \   map! <F11> <Esc>:RnvimrToggle<CR>\n
            \   tnoremap <silent> <F11> <C-\\><C-n>:RnvimrToggle<CR>\n
            \ "
            \ }) "ranger
"call dein#add('Shougo/vimfiler.vim', { 'hook_add' : "
            "\ nnoremap <Leader>ws :exe 'VimFiler '.expand('%:p:h')<CR>\n
            "\ "})
call dein#add('Shougo/neossh.vim')
call dein#add('derekwyatt/vim-fswitch', {
            \ 'normalized_name': 'fswitch',
            \ 'hook_add' : "
            \ au! BufEnter *.cpp,*.c,*.C,*.cxx,*.cc,*.CC let b:fswitchdst = 'hpp,h,H,hh,HH,hxx' | let b:fswitchlocs = '../inc,../include'\n
            \ au! BufEnter *.hpp,*.h,*.H,*.hh,*.HH,*.hxx let b:fswitchdst = 'cpp,c,C,cc,CC,cxx' | let b:fswitchlocs = '../src'\n
            \ let g:fsnonewfiles=1\n
            \ nmap <silent> <Leader>aa :FSHere<CR>\n
            \ nmap <silent> <Leader>ar :tab FSRight<CR>\n
            \ nmap <silent> <Leader>al :tab FSLeft<CR>\n
            \ nmap <silent> <Leader>aR :tab FSSplitRight<CR>\n
            \ nmap <silent> <Leader>aL :tab FSSplitLeft<CR>\n
            \ " })
call dein#add('zenbro/mirror.vim', { 'hook_add' : "
            \ nmap <Leader>rc :MirrorPush<CR>\n
            \ nmap <Leader>rp :MirrorPull<CR>\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compilation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('scrooloose/syntastic', { 'hook_add': function("plugin_cfg#syntastic#add") })
call dein#add('xuhdev/SingleCompile')
"call dein#add('wbthomason/buildit.nvim')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal, repl, embedding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kassio/neoterm', { 'hook_add' : "
            \ let g:neoterm_shell = '/usr/bin/fish'\n
            \ let g:neoterm_automap_keys = '<Leader>qm'\n
            \ nmap <M-t> :Tnew<CR>\n
            \ nmap <M-T> :Tnew<CR>i\n
            \ nmap <Leader>s :TReplSendLine<CR>\n
            \ vmap <Leader>s :TReplSendSelection<CR>\n
            \ " })

call dein#add('glacambre/firenvim', {
            \ 'hook_post_update': { _ -> firenvim#install(0) },
            \ 'hook_add': function('plugin_cfg#firenvim#add')
            \ })

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local bundles
call dein#local("~/.config/nvim/bundle_local", { 'depends': 'CountJump', 'frozen': 1 })

call dein#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit (included in default scripts)
au FileType text,txt let b:match_words="“:”,‘:’,«:»,„:“"

