if &shell =~# 'fish$'
    set shell=/bin/bash
endif

autocmd VimEnter * call dein#call_hook('post_source')
set runtimepath^=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin( expand('~/.cache/dein') )
let g:dein#types#git#clone_depth = 1
let g:dein#enable_name_conversion = 1

call dein#add('Shougo/dein.vim')
call dein#add('wsdjeg/dein-ui.vim',          {'depends': 'dein', 'lazy': 1, 'on_cmd': 'DeinUpdate' })
call dein#add('haya14busa/dein-command.vim', {'depends': 'dein', 'lazy': 1, 'on_cmd': 'Dein' })

call dein#add('tpope/vim-sensible')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Libraries
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('inkarkat/vim-ingo-library')
call dein#add('inkarkat/vim-CountJump', {'depends': 'vim-ingo-library' })
call dein#add('inkarkat/vim-SyntaxRange', {'depends': 'vim-ingo-library' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface and highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jonathanfilip/vim-lucius', {'hook_post_source': "
            \ colorscheme lucius\n
            \ LuciusBlack\n
            \ "})

" fade unfocused buffers
call dein#add('tadaa/vimade', {'hook_add' : "
            \ let g:vimade = {}\n
            \ let g:vimade.fadelevel = 0.7\n
            \ let g:vimade.usecursorhold=1\n
            \ "})
call dein#add('powerman/vim-plugin-AnsiEsc', {'lazy': 1, 'on_cmd': 'AnsiEsc'})
call dein#add('bronson/vim-trailing-whitespace', { 'hook_post_source' : "
            \ nnoremap <Leader>rts :FixWhitespace<CR>\n
            \ autocmd BufWritePre *.py,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace\n
            \ " })

call dein#add('vim-airline/vim-airline', {
            \ 'normalized_name': 'airline',
            \ 'depends': 'tagbar',
            \ 'hook_add': function('plugin_cfg#airline#add'),
            \ 'hook_post_source': function('plugin_cfg#airline#post_source')
            \ })
call dein#add('paranoida/vim-airlineish')
call dein#add('skywind3000/vim-quickui', {
            \ 'hook_add':         function('plugin_cfg#quickui#add'),
            \ 'hook_post_source': function('plugin_cfg#quickui#post_source'),
            \ 'lazy': 1,
            \ 'on_func': 'quickui#menu#open'
            \ })

" FIXME: almost not used
call dein#add('thiagoalessio/rainbow_levels.vim', { 'lazy': 1, 'on_cmd': 'RainbowLevelsToggle' })
call dein#add('kien/rainbow_parentheses.vim',     { 'lazy': 1, 'on_cmd': 'RainbowParenthesesToggle' })
call dein#add('Yggdroot/indentLine',              { 'hook_post_source' : "
            \ let g:indentLine_enabled=0\n
            \ au FileType cpp,python :IndentLinesEnable\n
            \ ",
            \ 'lazy': 1, 'on_cmd': ['IndentLinesEnable', 'IndentLinesToggle' ]
            \ })
call dein#add('nathanaelkane/vim-indent-guides',  {
            \ 'lazy': 1, 'on_cmd': ['IndentGuidesEnable', 'IndentGuidesToggle' ]
            \ })

call dein#add('ncm2/float-preview.nvim', {'hook_add' : "
            \ let g:float_preview#docked=1\n
            \ set completeopt+=preview\n
            \ "})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows and splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('t9md/vim-choosewin', { 'hook_add': "nmap <leader>-  <Plug>(choosewin)",
            \ 'lazy': 0, 'on_map': '<Plug>(choosewin)'})
call dein#add('romgrk/winteract.vim', { 'hook_add': "nmap <leader>w :InteractiveWindow<CR>",
            \ 'lazy': 0, 'on_cmd': 'InteractiveWindow'})
call dein#add('fabi1cazenave/suckless.vim', { 'hook_post_source': "
            \ let g:suckless_tabline=0\n
            \ nmap <M--> :tabprev<CR>\n
            \ nmap <M-=> :tabnext<CR>\n
            \ nmap <M-+> :tabnew<CR>\n
            \" })
"call dein#add('voldikss/vim-floaterm', { 'on_cmd': 'FloatermToggle', 'hook_add' : "
            "\ noremap  <silent> <F12> :FloatermToggle<CR>i\n
            "\ noremap! <silent> <F12> <Esc>:FloatermToggle<CR>i\n
            "\ tnoremap <silent> <F12> <C-\\><C-n>:FloatermToggle<CR>\n
            "\ "})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jiangmiao/auto-pairs', { 'hook_post_source' : "
            \ let g:AutoPairsFlyMode = 1\n
            \ let g:AutoPairsShortcutToggle=''\n
            \ let g:AutoPairsShortcutJump=''\n
            \ noremap <Leader>( :call AutoPairsToggle()<CR>\n
            \ let g:AutoPairs = {'(':')', '[':']', '{':'}',\"'\":\"'\",'\"':'\"', '`':'`'}\n
            \ call extend( g:AutoPairs, {'“':'”', '‘' : '’', '„':'“', '«':'»'} )\n
            \ "})
call dein#add('honza/vim-snippets')
call dein#add('SirVer/ultisnips', { 'hook_add' : "
            \ let g:UltiSnipsExpandTrigger='<Tab>'\n
            \ let g:UltiSnipsJumpForwardTrigger='<Tab>'\n
            \ let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'\n
            \ " })
call dein#add('tpope/vim-endwise')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kopischke/vim-fetch')                                                               " jump to file:line:col
call dein#add('tmhedberg/indent-motion')
call dein#add('Lokaltog/vim-easymotion', { 'hook_add' : "
            \ map <Leader>m <Plug>(easymotion-prefix)\n
            \ nnoremap <Leader>m. <Plug>(easymotion-repeat)
            \ ",
            \ 'lazy': 0,
            \ 'on_map': '<Plug>(easymotion-'
            \ })
                                                                                                   " clefer f/F/t/T mappings
call dein#add('rhysd/clever-f.vim', { 'hook_add' : "
            \ nnoremap <Leader>fr <Plug>(clever-f-reset)\n
            \ nnoremap ; <Plug>(clever-f-repeat-forward)\n
            \ \"nnoremap , <Plug>(clever-f-repeat-back)\n
            \ "})
call dein#add('bkad/camelcasemotion', { 'hook_post_source' : "
            \ call camelcasemotion#CreateMotionMappings(',')
            \ " })
call dein#add('inkarkat/vim-JumpToVerticalBlock', {'depends': 'vim-CountJump'})
call dein#add('inkarkat/vim-JumpToVerticalOccurrence', {'depends': 'vim-CountJump'})
call dein#add('inkarkat/vim-EnhancedJumps', {
            \ 'depends': 'vim-ingo-library',
            \ 'hook_add': "
            \   nmap <Leader><C-O> <Plug>EnhancedJumpsOlder\n
            \   nmap <Leader><C-I> <Plug>EnhancedJumpsNewer\n
            \   nmap <C-O>         <Plug>EnhancedJumpsLocalOlder\n
            \   nmap <C-I>         <Plug>EnhancedJumpsLocalNewer\n
            \   nmap <M-p>         <Plug>EnhancedJumpsRemoteOlder\n
            \   nmap <M-S-p>       <Plug>EnhancedJumpsRemoteNewer\n
            \   let g:EnhancedJumps_CaptureJumpMessages = 0\n
            \ "
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-scripts/RepeatableYank')                                           "karkat
call dein#add('machakann/vim-highlightedyank')
call dein#add('vim-scripts/ExplainPattern')
call dein#add('bfredl/nvim-miniyank', {'hook_add' : "
            \ map p <Plug>(miniyank-autoput)\n
            \ map P <Plug>(miniyank-autoPut)\n
            \ map <Leader>n <Plug>(miniyank-cycle)\n
            \ map <Leader>yc <Plug>(miniyank-tochar)\n
            \ map <Leader>yl <Plug>(miniyank-toline)\n
            \ map <Leader>yb <Plug>(miniyank-toblock)\n
            \ "})
call dein#add('inkarkat/vim-ReplaceWithRegister', { 'depends': ['vim-repeat', 'vim-visualrepeat'] })
call dein#add('inkarkat/vim-UnconditionalPaste', { 'depends': ['vim-ingo-library', 'vim-repeat'] })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('dkarter/bullets.vim', { 'hook_post_source' : "
            \ let g:bullets_enabled_file_types=['markdown', 'rst', 'text', 'txt', 'gitcommit']\n
            \ " })
call dein#add('sjl/gundo.vim', { 'hook_post_source' : "
            \ nnoremap <Leader>wu :GundoToggle<CR>\n
            \ let g:gundo_preview_bottom=1\n
            \ let g:gundo_width=30\n
            \ let g:gundo_right=1\n
            \ ",
            \ 'lazy': 1, 'on_cmd': 'GundoToggle'
            \ })

call dein#add('tpope/vim-repeat')
call dein#add('inkarkat/vim-visualrepeat')

call dein#add('Shougo/deoplete.nvim', {
            \ 'hook_add' : "
            \   let g:deoplete#enable_at_startup = 1\n
            \   let g:deoplete#disable_auto_complete = 0\n
            \   let g:deoplete#enable_smart_case = 1\n
            \   let g:deoplete#auto_complete_start_length = 2\n
            \ ",
            \ 'hook_post_source' : "
            \   call deoplete#custom#option('auto_refresh_delay', 200)\n
            \   inoremap <expr><C-X><C-X> deoplete#manual_complete() \n
            \ ",
            \ 'depends' : 'float-preview.nvim'})
call dein#add('mg979/vim-visual-multi')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kana/vim-submode', {'hook_post_source' : "
            \ call submode#enter_with('textmanip', 'x', '', '<Leader>Mm')\n
            \ call submode#leave_with('textmanip', 'xn', '', '<Esc>')\n
            \ call submode#map(       'textmanip', 'x', '', '>', '>>')\n
            \ call submode#map(       'textmanip', 'x', '', '<', '<<')\n
            \ ",
            \ })
call dein#add('vim-scripts/RelativeNumberCurrentWindow')
call dein#add('vim-scripts/RangeMacro') " karkat
call dein#add('wgurecky/vimSum', { 'lazy': 1, 'on_cmd': ['VisSum', 'VisMean', 'VisMult'] })
"call dein#add('Floobits/floobits-neovim')

call dein#add('moll/vim-bbye', { 'hook_post_source' : "
            \ nnoremap ZQ :Bdelete<CR>\n
            \ nnoremap ZZ :write<CR>:Bdelete<CR>\n
            \ nnoremap <Leader>ZZ ZZ\n
            \ nnoremap <Leader>ZQ ZQ\n
            \ ",
            \ 'lazy': 1, 'on_cmd': 'Bdelete'
            \ })
call dein#add('rbgrouleff/bclose.vim') " same as bbye, required by ranger
"call dein#add('nhooyr/neoman.vim')
call dein#add('thinca/vim-prettyprint', {'lazy': 1, 'on_cmd': ['PrettyPrint', 'PP']})
call dein#add('romgrk/pp.vim',          {'lazy': 1, 'on_cmd': 'Pp'})
call dein#add('ciaranm/detectindent', {'hook_post_source' : "
      \ au FileType cpp,python :DetectIndent
      \ "})
call dein#add('tpope/vim-fugitive') " , { 'hook_post_source' : function("plugin_cfg#fugitive#post_source") }
call dein#add('idanarye/vim-merginal', {'lazy': 1, 'on_cmd': ['Merginal', 'MerginalToggle']})
call dein#add('kabbamine/zeavim.vim', {'lazy': 1, 'on_cmd': ['Zeavim', 'ZeavimV'], 'on_map': ['<Leader>z', '<Leader><Leader>z']}) "call zeal
call dein#add('https://gitlab.com/neonunux/vim-open-or-create-path-and-file.git', {'lazy': 1, 'on_cmd': 'OpenOrCreateFile'})

call dein#add('chrisbra/unicode.vim') " , {'lazy': 1, 'on_cmd': ['UnicodeSearch', 'Digraph', 'UnicodeTable', 'UnicodeName']}
call dein#add('Konfekt/vim-unicode-homoglyphs', { 'hook_source': "let g:is_homoglyph_on=0", 'lazy': 1 })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textobjects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('andymass/vim-matchup')
call dein#add('machakann/vim-sandwich', {
            \ 'normalized_name': 'sandwich',
            \ 'hook_post_source': function('plugin_cfg#sandwich#post_source')
            \ })

call dein#add('kana/vim-textobj-user', { 'hook_post_source' : "
            \ call textobj#user#plugin('mylatex', {
            \                 'latex-amp': {
            \                   'pattern': [ '\\(&\\|^\\)\\s*', '\\s*\\(&\\|\\\\\\\\\\)' ],
            \                   'select-a': 'a&',
            \                   'select-i': 'i&'
            \                 },
            \               })
            \ " })
"call dein#add('haya14busa/vim-operator-flashy')
call dein#add('kana/vim-textobj-line')
call dein#add('rhysd/vim-textobj-continuous-line')
call dein#add('glts/vim-textobj-comment')
call dein#add('kana/vim-textobj-entire', { 'hook_add' : "
            \ let g:textobj_entire_no_default_key_mappings=1\n
            \ xmap iE <Plug>(textobj-entire-i)\n
            \ omap iE <Plug>(textobj-entire-i)\n
            \ xmap aE <Plug>(textobj-entire-a)\n
            \ omap aE <Plug>(textobj-entire-a)\n
            \ " })
call dein#add('kana/vim-textobj-indent')
call dein#add('sgur/vim-textobj-parameter', { 'hook_add' : "
            \ let g:textobj_parameter_no_default_key_mappings=1\n
            \ xmap a. <Plug>(textobj-parameter-a)\n
            \ omap a. <Plug>(textobj-parameter-a)\n
            \ xmap i. <Plug>(textobj-parameter-i)\n
            \ omap i. <Plug>(textobj-parameter-i)\n
            \ " })
call dein#add('machakann/vim-textobj-functioncall', { 'hook_add' : "
            \ let g:textobj_functioncall_no_default_key_mappings = 1\n
            \ xmap i@ <Plug>(textobj-functioncall-i)\n
            \ omap i@ <Plug>(textobj-functioncall-i)\n
            \ xmap a@ <Plug>(textobj-functioncall-a)\n
            \ omap a@ <Plug>(textobj-functioncall-a)\n
            \ " })
call dein#add('kana/vim-textobj-function')
call dein#add('bps/vim-textobj-python', { 'hook_add' : "
            \ xmap aF <Plug>(textobj-python-function-a)\n
            \ omap aF <Plug>(textobj-python-function-a)\n
            \ xmap iF <Plug>(textobj-python-function-i)\n
            \ omap iF <Plug>(textobj-python-function-i)\n
            \ xmap aP <Plug>(textobj-python-class-a)\n
            \ omap aP <Plug>(textobj-python-class-a)\n
            \ xmap iP <Plug>(textobj-python-class-i)\n
            \ omap iP <Plug>(textobj-python-class-i)\n
            \ " })
call dein#add('jceb/vim-textobj-uri')
call dein#add('glts/vim-textobj-indblock')
call dein#add('kana/vim-textobj-datetime')
"call dein#add('rbonvall/vim-textobj-latex')
call dein#add('thinca/vim-textobj-between', { 'hook_add' : "
            \ let g:textobj_between_no_default_key_mappings=1\n
            \ xmap a_ <Plug>(textobj-between-a)\n
            \ omap a_ <Plug>(textobj-between-a)\n
            \ xmap i_ <Plug>(textobj-between-i)\n
            \ omap i_ <Plug>(textobj-between-i)\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('AndrewRadev/switch.vim', {
            \ 'normalized_name': 'switch',
            \ 'hook_add': function('plugin_cfg#switch#add'),
            \ 'hook_post_source': function('plugin_cfg#switch#post_source')
            \ })
call dein#add('scrooloose/nerdcommenter')
call dein#add('t9md/vim-textmanip', { 'hook_add' : "
            \ function! TMoff()\n
            \     set ei+=TextYankPost\n
            \ endfunction\n
            \ function! TMon()\n
            \     set ei-=TextYankPost\n
            \ endfunction\n
            \ let g:textmanip_enable_mappings=0\n
            \ let g:textmanip_move_ignore_shiftwidth=1\n
            \ xmap <C-j> <Plug>(textmanip-move-down)\n
            \ xmap <C-k> <Plug>(textmanip-move-up)\n
            \ xmap <C-h> <Plug>(textmanip-move-left)\n
            \ xmap <C-l> <Plug>(textmanip-move-right)\n
            \ call submode#map(       'textmanip', 'x', 'r', 'j', '<C-j>')\n
            \ call submode#map(       'textmanip', 'x', 'r', 'k', '<C-k>')\n
            \ call submode#map(       'textmanip', 'x', 'r', 'h', '<C-h>')\n
            \ call submode#map(       'textmanip', 'x', 'r', 'l', '<C-l>')\n
            \ ",
            \ "depends": "vim-submode" })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tables
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('dhruvasagar/vim-table-mode', {'hook_add' : "
            \ let g:table_mode_corner_corner='+'
            \ "})
call dein#add('junegunn/vim-easy-align', { 'hook_add' : "
            \ vmap <silent> <leader>ea <Plug>(LiveEasyAlign)\n
            \ vmap <silent> <leader>eA <Plug>(EasyAlign)\n
            \ nmap <silent> <leader>ea <Plug>(LiveEasyAlign)\n
            \ nmap <silent> <leader>et  :let p=getpos('.')<CR>vie:EasyAlign * &<CR>:call setpos('.', p)<CR>\n
            \ nmap <silent> <leader>es  :let p=getpos('.')<CR>vaE:EasyAlign *\ <CR>:call setpos('.', p)<CR>\n
            \ nmap <silent> <leader>e-- :let p=getpos('.')<CR>vaE:EasyAlign */ -- /<CR>:call setpos('.', p)<CR>\n
            \ vmap <silent> <leader>et  :'<,'>EasyAlign * &<CR>\n
            \ vmap <silent> <leader>es  :'<,'>EasyAlign *\ <CR>\n
            \ vmap <silent> <leader>e-- :'<,'>EasyAlign */ -- /<CR>\n
            \ " })
call dein#add('salsifis/vim-transpose', { 'hook_add' : "vmap <silent> <leader>et :TransposeInteractive<CR>" })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('will133/vim-dirdiff', { 'hook_add' : "
            \ map <unique> <Leader>Dg <Plug>DirDiffGet\n
            \ map <unique> <Leader>Dp <Plug>DirDiffPut\n
            \ map <unique> <Leader>Dj <Plug>DirDiffNext\n
            \ map <unique> <Leader>Dk <Plug>DirDiffPrev\n
            \ " })
call dein#add('AndrewRadev/linediff.vim', { 'hook_add' : "
            \ vmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dl :Linediff<CR>\n
            \ nmap <Leader>dr :LinediffReset<CR>\n
            \ " })
call dein#add('rickhowe/spotdiff.vim')
call dein#add('rickhowe/diffchar.vim', { 'hook_add' : "let g:DiffModeSync=0" })
call dein#add('chrisbra/vim-diff-enhanced')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('klen/python-mode', { 'hook_add' : "
            "\ let g:pymode = 1\n
            "\ let g:pymode_lint = 0\n
            "\ let g:pymode_rope = 0\n
            "\ let g:pymode_rope_guess_project = 0\n
            "\ let g:pymode_virtualenv = 0\n
            "\ let g:pymode_options = 0\n
            "\ let g:pymode_trim_whitespaces = 0\n
            "\ " })
call dein#add('kalekundert/vim-coiled-snake')
call dein#add('lervag/vimtex', { 'hook_add' : "
            \ let g:vimtex_view_method='zathura'\n
            \ \" let g:vimtex_view_method='mupdf'\n
            \ let g:vimtex_imaps_enabled=0\n
            \ let g:vimtex_index_split_width=60\n
            \ if exepath('nvr')!=''\n
            \   let g:vimtex_compiler_progname='nvr'\n
            \ endif\n
            \ \" if exepath('pplatex')!=''\n
            \ \"   let g:vimtex_quickfix_method='pplatex'\n
            \ \" endif\n
            \ let g:vimtex_index_split_pos='vert botright'\n
            \ noremap <localleader>lL <plug>(vimtex-compile-ss)\n
            \ noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>\n
            \    let g:vimtex_quickfix_latexlog = {
            \           'default' : 0
            \          }
            \ \" let g:neocomplete#sources#omni#input_patterns.tex =
            \             \" '\v\\%('
            \             \" . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
            \             \" . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
            \             \" . '|hyperref\s*\[[^]]*'
            \             \" . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
            \             \" . '|%(include%(only)?|input)\s*\{[^}]*'
            \             \" . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
            \             \" . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
            \             \" . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
            \             \" . '|usepackage%(\s*\[[^]]*\])?\s*\{[^}]*'
            \             \" . '|documentclass%(\s*\[[^]]*\])?\s*\{[^}]*'
            \             \" . ')'
            \ " })
call dein#add('lervag/wiki.vim', { 'hook_add' : "
            \ let g:wiki_mappings_use_defaults=0
            \ " })
call dein#add('lervag/wiki-ft.vim', { 'depends' : 'wiki'})
call dein#add('joom/latex-unicoder.vim', { 'hook_add' : "let g:unicoder_no_map=1" })
call dein#add('dag/vim-fish')
"call dein#add('Rykka/riv.vim', { 'hook_add' : "let g:riv_ignored_imaps = '<Tab>,<S-Tab>'" })
call dein#add('plasticboy/vim-markdown', { 'hook_add' : "
            \ au BufRead,BufEnter /tmp/qutebrowser-editor-* setl ft=markdown spell
            \ " })
call dein#add('JuliaEditorSupport/julia-vim')
call dein#add('bfrg/vim-cpp-modern')
call dein#add('vim-scripts/ebnf.vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('brooth/far.vim')        " :Far
call dein#add('eugen0329/vim-esearch') " \ff
call dein#add('tpope/vim-abolish')     " :%S////
call dein#add('t9md/vim-quickhl', { 'hook_add' : "
            \ nmap <leader>hm <Plug>(quickhl-manual-this)\n
            \ xmap <leader>hm <Plug>(quickhl-manual-this)\n
            \ nmap <leader>hn <Plug>(quickhl-manual-reset)\n
            \ xmap <leader>hn <Plug>(quickhl-manual-reset)\n
            \ \n
            \ nmap <leader>hM :exe 'QuickhlManualAdd! \\<'.expand('<cword>').'\\>'<CR>\n
            \ xmap <leader>hM :exe 'QuickhlManualAdd! \\<'.expand('<cword>').'\\>'<CR>\n
            \ nmap <leader>hN :exe 'QuickhlManualDelete! \\<'.expand('<cword>').'\\>'<CR>\n
            \ xmap <leader>hN :exe 'QuickhlManualDelete! \\<'.expand('<cword>').'\\>'<CR>\n
            \ \n
            \ \"nmap <Space>j <Plug>(quickhl-cword-toggle)\n
            \ \"nmap <Space>] <Plug>(quickhl-tag-toggle)\n
            \ map <leader>hH <Plug>(operator-quickhl-manual-this-motion)\n
            \ " })
call dein#add('qxxxb/vim-searchhi', { 'hook_add' : "
            \ nmap / <Plug>(searchhi-/)\n
            \ nmap ? <Plug>(searchhi-?)\n
            \ nmap n <Plug>(searchhi-n)\n
            \ nmap N <Plug>(searchhi-N)\n
            \ nmap * <Plug>(searchhi-*)\n
            \ nmap # <Plug>(searchhi-#)\n
            \ nmap g* <Plug>(searchhi-g*)\n
            \ nmap g# <Plug>(searchhi-g#)\n
            \ nmap <silent> <C-L> <Plug>(searchhi-clear-all)\n
            \
            \ vmap / <Plug>(searchhi-v-/)\n
            \ vmap ? <Plug>(searchhi-v-?)\n
            \ vmap n <Plug>(searchhi-v-n)\n
            \ vmap N <Plug>(searchhi-v-N)\n
            \ vmap * <Plug>(searchhi-v-*)\n
            \ vmap # <Plug>(searchhi-v-#)\n
            \ vmap g* <Plug>(searchhi-v-g*)\n
            \ vmap g# <Plug>(searchhi-v-g#)\n
            \ \" vmap <silent> <C-L> <Plug>(searchhi-v-off-all)\n
            \ " })
call dein#add('inkarkat/vim-ExtractMatches', { 'depends': 'vim-ingo-library' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Menus
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-ctrlspace/vim-ctrlspace', { 'hook_add' : "
            \ let g:CtrlSpaceSetDefaultMapping=1\n
            \ let g:CtrlSpaceDefaultMappingKey='<C-Space> '\n
            \ nmap <M-u>    :CtrlSpaceGoUp<CR>\n
            \ nmap <M-S-u>  :CtrlSpaceGoDown<CR>\n
            \ " })
call dein#add('lifepillar/vim-cheat40') " \? for cheatsheet
call dein#add('ctrlpvim/ctrlp.vim', {'hook_add' : "
            \ let g:ctrlp_working_path_mode='c'\n
            \ let g:ctrlp_cmd='CtrlPMRUFiles'
            \ "})

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call dein#add('xolox/vim-easytags', { 'hook_add' : "
            "\ let g:easytags_file='./tags'\n
            "\ let g:easytags_ignored_filetypes=''\n
            "\ let g:easytags_on_cursorhold = 0\n
            "\ let g:easytags_auto_update = 0\n
            "\ let g:easytags_updatetime_min = 600000\n
            "\ " })
call dein#add('jsfaint/gen_tags.vim', { 'hook_add' : "
            \ let g:loaded_gentags#gtags=1
            \ " })
call dein#add('vim-voom/voom', { 'hook_add' : "
            \ let g:voom_ft_modes = { 'python':'python', 'tex':'latex' }\n
            \ let g:voom_tree_width = 60\n
            \ let g:voom_tree_placement='right'\n
            \ nmap <silent> <Leader>wo :VoomToggle<CR>\n
            \ " })
command! -nargs=0 TagbarToggle        call tagbar#ToggleWindow()
call dein#add('majutsushi/tagbar', { 'hook_add' : "
            \ nnoremap <silent> <Leader>wt :TagbarToggle<CR>\n
            \ let g:tagbar_autoclose = 1\n
            \ let g:tagbar_compact = 1\n
            \ let g:tagbar_autofocus = 1\n
            \ let g:tagbar_autoshowtag = 1\n
            \ let g:tagbar_type_tex = {
            \               'ctagstype' : 'latex',
            \               'kinds'     : [
            \               's:sections',
            \               'g:graphics',
            \               'l:labels',
            \               'r:refs:1',
            \               'p:pagerefs:1',
            \               'f:includes'
            \               ],
            \               'sort'    : 0,
            \               }\n
            \ let g:tagbar_type_make = {
            \               'ctagstype' : 'make',
            \               'kinds'     : [
            \               'm:macros',
            \               't:task',
            \               ],
            \               'sort'    : 0,
            \               }\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and Folders
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('vim-scripts/Rename')
call dein#add('chrisbra/SudoEdit.vim', { 'hook_add' : "inoremap <S-F2> :SudoWrite<CR>" })
call dein#add('ervandew/archive')
call dein#add('xolox/vim-misc')
"call dein#add('xolox/vim-shell', { 'depends' : 'vim-misc', 'hook_add' : "
            "\ let g:shell_mappings_enabled = 0\n
            "\ let g:shell_fullscreen_items = 'mTe'\n
            "\ nnoremap <Leader>op :Open<CR>\n
            "\ nnoremap <Leader>if :Fullscreen<CR>\n
            "\ " })
call dein#add('itchyny/vim-external', {'hook_add': "
            \ map <Leader>oe <Plug>(external-editor)\n
            \ map <Leader>oo <Plug>(external-explorer)\n
            \ map <Leader>ob <Plug>(external-browser)\n
            \ "})
call dein#add('francoiscabrol/ranger.vim', { 'hook_add' : "
            \ let g:ranger_replace_netrw = 0\n
            \ let g:NERDTreeHijackNetrw = 0\n
            \ nnoremap <silent> <M-r> :RangerCurrentFile<CR>\n
            \ nnoremap <silent> <M-R> :RangerWorkingDirectory<CR>\n
            \ ",
            \ 'depends' : 'bclose'
            \} )
call dein#add('Shougo/vimfiler.vim', { 'hook_add' : "
            \ nnoremap <Leader>ws :exe 'VimFiler '.expand('%:p:h')<CR>\n
            \ "})
call dein#add('Shougo/neossh.vim')
call dein#add('derekwyatt/vim-fswitch', { 'hook_add' : "
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
call dein#add('scrooloose/syntastic', { 'hook_add' : "
            \ let g:syntastic_mode_map = { 'mode': 'passive',
            \                              'active_filetypes': [],
            \                              'passive_filetypes': [] } \n
            \ let g:syntastic_ignore_files = ['^/usr/include/', '\.C$'] \n
            \ if executable( 'clang++' ) \n
            \     let g:syntastic_cpp_compiler = 'clang++' \n
            \ endif \n
            \ let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' \n
            \ let g:syntastic_python_checkers = [ 'python' ] \n
            \ nmap <silent> <Leader>we :Errors<CR> \n
            \ " })
call dein#add('xuhdev/SingleCompile')
call dein#add('wbthomason/buildit.nvim')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal, repl, embedding
call dein#add('kassio/neoterm', { 'hook_add' : "
            \ let g:neoterm_shell = '/usr/bin/fish'\n
            \ let g:neoterm_automap_keys = '<Leader>qm'\n
            \ nmap <M-t> :Tnew<CR>\n
            \ nmap <M-T> :Tnew<CR>i\n
            \ " })

call dein#add('glacambre/firenvim', {
            \ 'hook_post_update': { _ -> firenvim#install(0) },
            \ 'hook_add' : function('plugin_cfg#firenvim#add')
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

let g:ConflictMotions_TakeMappingPrefix = '<Leader>='
