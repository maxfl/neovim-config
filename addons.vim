if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin( expand('~/.vim/bundle/') )
let g:dein#types#git#clone_depth = 1

call dein#add('Shougo/dein.vim')
call dein#local("~/.vim/bundle_local")

call dein#add('chrisbra/SudoEdit.vim', { 'hook_add' : "inoremap <S-F2> :SudoWrite<CR>" })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tim Pope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-repeat')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface and highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('altercation/vim-colors-solarized', { 'hook_add' : "colorscheme solarized"})
call dein#add('jszakmeister/vim-togglecursor')                                                     " change cursor for insert/normal modes

" FIXME: almost not used
call dein#add('kien/rainbow_parentheses.vim', { 'hook_add' : "nnoremap <Leader>R :RainbowParenthesesToggle<CR>" })
"
" FIXME: almost not used
call dein#add('nathanaelkane/vim-indent-guides', { 'hook_add' : "let g:indent_guides_color_change_percent=2" })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jiangmiao/auto-pairs', { 'hook_add' : "
            \ let g:AutoPairsFlyMode = 1\n
            \ let g:AutoPairsShortcutToggle=''\n
            \ noremap <Leader>( :call AutoPairsToggle()<CR>\n
            \ let g:AutoPairs = {'(':')', '[':']', '{':'}',\"'\":\"'\",'\"':'\"', '`':'`'}\n
            \ call extend( g:AutoPairs, {'“':'”', '‘' : '’', '„':'“', '«':'»'} )\n
            \ " } )

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kopischke/vim-fetch')                                                               " jump to file:line:col
call dein#add('tmhedberg/indent-motion')
call dein#add('Lokaltog/vim-easymotion', {
            \ 'hook_add' : "nnoremap <Leader><Leader>. <Plug>(easymotion-repeat)"
            \ })
                                                                                                   " clefer f/F/t/T mappings
call dein#add('rhysd/clever-f.vim', { 'hook_add' : "
            \ nnoremap <Leader>fr <Plug>(clever-f-reset)\n
            \ nnoremap ; <Plug>(clever-f-repeat-forward)\n
            \ \"nnoremap , <Plug>(clever-f-repeat-back)\n
            \ "})
call dein#add('bkad/camelcasemotion', { 'hook_add' : "
            \ call camelcasemotion#CreateMotionMappings(',')
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('ciaranm/detectindent')
call dein#add('t9md/vim-quickhl', { 'hook_add' : "
            \ nmap <leader>m <Plug>(quickhl-manual-this)\n
            \ xmap <leader>m <Plug>(quickhl-manual-this)\n
            \ nmap <leader>n <Plug>(quickhl-manual-reset)\n
            \ xmap <leader>n <Plug>(quickhl-manual-reset)\n
            \ \n
            \ nmap <leader>M :exe 'QuickhlManualAdd! \\<'.expand('<cword>').'\\>'<CR>\n
            \ xmap <leader>M :exe 'QuickhlManualAdd! \\<'.expand('<cword>').'\\>'<CR>\n
            \ nmap <leader>N :exe 'QuickhlManualDelete! \\<'.expand('<cword>').'\\>'<CR>\n
            \ xmap <leader>N :exe 'QuickhlManualDelete! \\<'.expand('<cword>').'\\>'<CR>\n
            \ \n
            \ \"nmap <Space>j <Plug>(quickhl-cword-toggle)\n
            \ \"nmap <Space>] <Plug>(quickhl-tag-toggle)\n
            \ map <leader>H <Plug>(operator-quickhl-manual-this-motion)\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ingo Karkat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add("vim-scripts/CountJump")    "needed by Conflict*
call dein#add("vim-scripts/visualrepeat")
call dein#add('vim-scripts/RelativeNumberCurrentWindow')
call dein#add('vim-scripts/ChangeGlobally')
call dein#add('vim-scripts/RangeMacro')
call dein#add('vim-scripts/RepeatableYank')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textobjects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('machakann/vim-sandwich')

call dein#add('kana/vim-textobj-user')
"call dein#add('haya14busa/vim-operator-flashy')
call dein#add('kana/vim-textobj-line')
call dein#add('rhysd/vim-textobj-continuous-line')
call dein#add('glts/vim-textobj-comment')
call dein#add('kana/vim-textobj-entire')
call dein#add('kana/vim-textobj-indent')
call dein#add('sgur/vim-textobj-parameter')
call dein#add('machakann/vim-textobj-functioncall')
call dein#add('kana/vim-textobj-function')
call dein#add('bps/vim-textobj-python')
call dein#add('jceb/vim-textobj-uri')
call dein#add('glts/vim-textobj-indblock')
call dein#add('kana/vim-textobj-datetime')
"call dein#add('rbonvall/vim-textobj-latex')
call dein#add('thinca/vim-textobj-between')
"call dein#add('reedes/vim-textobj-quote')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shougo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/denite.nvim', { 'hook_add' : "
            \ nnoremap <Leader>lb :<C-u>Denite buffer file_mru<CR>\n
            \ nnoremap <Leader>lf :<C-u>DeniteBufferDir file<CR>\n
            \ nnoremap <Leader>ln :<C-u>exe \"DeniteBufferDir -input=\".expand(\"<cfile>\").\" file:new file\"<CR>\n
            \ nnoremap <Leader>lO :<C-u>Denite -ignorecase outline<CR>\n
            \ nnoremap <Leader>lF :<C-u>DeniteBufferDir file_rec<CR>
            \ nnoremap <Leader>ld :<C-u>Denite file_rec<CR>
            \ "})
call dein#add('Shougo/unite.vim')
call dein#add('francoiscabrol/ranger.vim', { 'hook_add' : "let g:ranger_replace_netrw = 0\n
                                                         \ let g:NERDTreeHijackNetrw = 0"} )
call dein#add('Shougo/vimfiler.vim', { 'hook_add' : "
            \ nnoremap <Leader>ws :exe 'VimFiler '.expand('%:p:h')<CR>\n
            \ "})
call dein#add('Shougo/neossh.vim')

call dein#add('Shougo/deoplete.nvim', { 'hook_add' : "
                \ let g:deoplete#enable_at_startup = 1 \n
                \ let g:deoplete#disable_auto_complete = 0 \n
                \ let g:deoplete#enable_smart_case = 1 \n
                \ let g:deoplete#auto_complete_start_length = 2 \n
                \ inoremap <expr><C-X><C-X> neocomplete#manual_complete() \n
                \ "})

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"
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
call dein#add('vim-airline/vim-airline', { 'depends': 'tagbar' })
call dein#add('vim-airline/vim-airline-themes')
call dein#add('paranoida/vim-airlineish')
"call dein#add('ntpeters/vim-airline-colornum')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"
call dein#add('svermeulen/vim-easyclip')
call dein#add('machakann/vim-highlightedyank')
if has('python')
    call dein#add('honza/vim-snippets')
    call dein#add('SirVer/ultisnips', { 'hook_add' : "
                \ let g:UltiSnipsExpandTrigger='<Tab>'\n
                \ let g:UltiSnipsJumpForwardTrigger='<Tab>'\n
                \ let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'\n
                \ " })
else
    call dein#disable('ultisnips')
end
call dein#add('derekwyatt/vim-fswitch')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tim Pope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-dispatch', { 'hook_add' : "
            \ nnoremap <Leader>qm :Make<CR>\n
            \ nnoremap <Leader>qM :Make!<CR>\n
            \ nnoremap <Leader>qc :Copen<CR>\n
            \ nnoremap <Leader>qC :Copen!<CR>\n
            \ " })
call dein#add('tpope/vim-fugitive', { 'hook_add' : "
            \ nmap <silent> <Leader>ga :Git add %<CR>\n
            \ nmap <silent> <Leader>gR :Gremove!<CR>\n
            \ nmap <silent> <Leader>gc :Gcommit -a<CR>\n
            \ nmap <silent> <Leader>gC :Gcommit<CR>\n
            \ nmap <silent> <Leader>gd :Gdiff<CR>\n
            \ nmap <silent> <Leader>gs :Gstatus<CR>\n
            \ nmap <silent> <Leader>gl :Glog<CR>\n
            \ nmap <silent> <Leader>gb :Gblame<CR>\n
            \ nmap <silent> <Leader>gi :Gsplit! svn info<CR>\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('AndrewRadev/switch.vim', { 'hook_add' : "
            \ let g:switch_mapping='-'\n
            \ let g:switch_reverse_mapping='+'\n
            \ let g:switch_find_smallest_match=0\n
            \ let g:switch_custom_definitions = [
            \       [ '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' ],
            \       [ '⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹' ],
            \       [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ],
            \       [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
            \       [ 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье' ],
            \       [ 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота', 'воскресенье' ],
            \       [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ],
            \       [ 'january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december' ],
            \       [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
            \       [ 'jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec' ],
            \       [ 'black', 'white', 'grey', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow' ],
            \       [ 'TODO', 'DONE', 'XXX', 'FIXME' ],
            \       [ 'TRUE', 'FALSE' ],
            \       { '\C\<yes\>': 'no', '\C\<no\>':  'yes',  }, { '\C\<Yes\>': 'No', '\C\<No\>':  'Yes',  }, { '\C\<YES\>': 'NO', '\C\<NO\>':  'YES',  },
            \       { '\C\<on\>': 'off', '\C\<off\>':  'on',  }, { '\C\<On\>': 'Off', '\C\<Off\>':  'On',  }, { '\C\<ON\>': 'OFF', '\C\<OFF\>':  'ON',  },
            \       { '\C\<AND\>': 'OR', '\C\<OR\>':  'AND',  }, { '\C\<and\>': 'or', '\C\<or\>':  'and',  },
            \       [ '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' ],
            \     ]\n
            \ autocmd FileType gitrebase let b:switch_custom_definitions = [
            \       [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
            \     ]\n
            \ autocmd FileType tex,plaintex let b:switch_custom_definitions = [
            \         [ '\\tiny', '\\scriptsize', '\\footnotesize', '\\small', '\\normalsize', '\\large', '\\Large', '\\LARGE', '\\huge', '\\Huge' ],
            \         [ '\\displaystyle', '\\scriptstyle', '\\scriptscriptstyle', '\\textstyle' ],
            \         [ '\\part', '\\chapter', '\\section', '\\subsection', '\\subsubsection', '\\paragraph', '\\subparagraph' ],
            \         [ 'part:', 'chap:', 'sec:', 'subsec:', 'subsubsec:' ],
            \         [ 'article', 'report', 'book', 'letter', 'slides' ],
            \         [ 'a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper', 'beamer', 'subfiles', 'standalone' ],
            \         [ 'onecolumn', 'twocolumn' ],
            \         [ 'oneside', 'twoside' ],
            \         [ 'draft', 'final' ],
            \         [ 'AnnArbor', 'Antibes', 'Bergen', 'Berkeley',
            \           'Berlin', 'Boadilla', 'CambridgeUS', 'Copenhagen', 'Darmstadt',
            \           'Dresden', 'Frankfurt', 'Goettingen', 'Hannover', 'Ilmenau',
            \           'JuanLesPins', 'Luebeck', 'Madrid', 'Malmoe', 'Marburg',
            \           'Montpellier', 'PaloAlto', 'Pittsburgh', 'Rochester', 'Singapore',
            \           'Szeged', 'Warsaw' ]
            \      ]\n
            \ " })
call dein#add('scrooloose/nerdcommenter')
call dein#add('sjl/gundo.vim', { 'hook_add' : "
            \ nnoremap <Leader>wu :GundoToggle<CR>\n
            \ let g:gundo_preview_bottom=1\n
            \ let g:gundo_width=30\n
            \ let g:gundo_right=1\n
            \ " })
call dein#add('junegunn/vim-easy-align')
call dein#add('salsifis/vim-transpose')
call dein#add('t9md/vim-textmanip')
call dein#add('vim-scripts/ExplainPattern')
call dein#add('vim-scripts/Rename')

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
call dein#add('vim-scripts/diffchar.vim', { 'hook_add' : "let g:DiffModeSync=0" })
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
call dein#add('lervag/vimtex', { 'hook_add' : "
            \ let g:vimtex_view_method='zathura'\n
            \ \" let g:vimtex_view_method='mupdf'\n
            \ let g:vimtex_imaps_enabled=0\n
            \ let g:vimtex_index_split_width=60\n
            \ let g:vimtex_index_split_pos='vert botright'\n
            \ noremap <localleader>lL <plug>(vimtex-compile-ss)\n
            \ noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>\n
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
call dein#add('davidoc/taskpaper.vim')
call dein#add('aliva/vim-fish')
"call dein#add('lifepillar/vim-mucomplete')
call dein#add('terryma/vim-multiple-cursors', { 'hook_add' : "
            \ let g:multi_cursor_start_key='<C-n>'\n
            \ let g:multi_cursor_quit_key='<C-z>'\n
            \ \"let g:multi_cursor_exit_from_insert_mode=1\n
            \ \"let g:multi_cursor_exit_from_visual_mode=1\n
            \ 
            \ function! Multiple_cursors_before()\n
            \     if exists('*deoplete#disable')\n
            \         call deoplete#disable()\n
            \     endif\n
            \     if dein#tap('clever-f.vim')\n
            \         nunmap f\n
            \         xunmap f\n
            \         ounmap f\n
            \         nunmap F\n
            \         xunmap F\n
            \         ounmap F\n
            \         nunmap t\n
            \         xunmap t\n
            \         ounmap t\n
            \         nunmap T\n
            \         xunmap T\n
            \         ounmap T\n
            \     endif\n
            \ endfunction\n
            \ 
            \ function! Multiple_cursors_after()\n
            \     if exists('*deoplete#enable')\n
            \         call deoplete#enable()\n
            \     endif\n
            \     if dein#tap('clever-f.vim')\n
            \         nmap f <Plug>(clever-f-f)\n
            \         xmap f <Plug>(clever-f-f)\n
            \         omap f <Plug>(clever-f-f)\n
            \         nmap F <Plug>(clever-f-F)\n
            \         xmap F <Plug>(clever-f-F)\n
            \         omap F <Plug>(clever-f-F)\n
            \         nmap t <Plug>(clever-f-t)\n
            \         xmap t <Plug>(clever-f-t)\n
            \         omap t <Plug>(clever-f-t)\n
            \         nmap T <Plug>(clever-f-T)\n
            \         xmap T <Plug>(clever-f-T)\n
            \         omap T <Plug>(clever-f-T)\n
            \     endif\n
            \ endfunction\n
            \ " })
call dein#add('nhooyr/neoman.vim')
call dein#add('vim-ctrlspace/vim-ctrlspace')

call dein#add('thinca/vim-prettyprint')
call dein#add('romgrk/pp.vim')

call dein#add('powerman/vim-plugin-AnsiEsc')
call dein#add('s3rvac/vim-syntax-redminewiki')
"call dein#add('lyokha/vim-xkbswitch', { 'hook_add' : "
            "\ let g:XkbSwitchEnabled = 1\n
            "\ let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'\n
            "\ let g:XkbSwitchILayout = 'us'\n
            "\ let g:XkbSwitchNLayout = 'us'\n
            "\  })
call dein#add('xolox/vim-misc')

call dein#add('Rykka/riv.vim', { 'hook_add' : "let g:riv_ignored_imaps = '<Tab>,<S-Tab>'" })

call dein#add('chrisbra/unicode.vim')
call dein#add('joom/latex-unicoder.vim', { 'hook_add' : "let g:unicoder_no_map=1" })

call dein#add('wgurecky/vimSum')

call dein#add('bronson/vim-trailing-whitespace', { 'hook_add' : "
            \ nnoremap <Leader>rts :FixWhitespace<CR>\n
            \ autocmd BufWritePre *.py,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace\n
            \ " })

" FIXME: Almost not used
call dein#add('moll/vim-bbye', { 'hook_add' : "
            \ nnoremap ZW :Bdelete<CR>\n
            \ nnoremap ZX :write<CR>:Bdelete<CR>\n
            \ " })

call dein#add('plasticboy/vim-markdown')
call dein#add('JuliaEditorSupport/julia-vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search and replace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('brooth/far.vim')        " :Far
call dein#add('eugen0329/vim-esearch') " \ff
call dein#add('tpope/vim-abolish')     " :%S////
call dein#add('mileszs/ack.vim')       " FIXME: deprecate

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('xolox/vim-easytags', { 'hook_add' : "
            \ let g:easytags_file='./tags'\n
            \ let g:easytags_ignored_filetypes=''\n
            \ let g:easytags_on_cursorhold = 0\n
            \ let g:easytags_auto_update = 0\n
            \ let g:easytags_updatetime_min = 600000\n
            \ " })
call dein#add('vim-scripts/VOoM', { 'hook_add' : "
            \ let g:voom_ft_modes = { 'python':'python', 'tex':'latex' }\n
            \ let g:voom_tree_width = 60\n
            \ let g:voom_tree_placement='right'\n
            \ nmap <silent> <Leader>wo :VoomToggle<CR>\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and Folders
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('ervandew/archive')
call dein#add('xolox/vim-shell', { 'hook_add' : "
            \ let g:shell_mappings_enabled = 0\n
            \ let g:shell_fullscreen_items = 'mTe'\n
            \ nnoremap <Leader>op :Open<CR>\n
            \ nnoremap <Leader>if :Fullscreen<CR>\n
            \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compilation and running
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

"call dein#add('ivanov/vim-ipython', { 'hook_add' : "let g:ipy_perform_mappings=0" })

call dein#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if 0 "dein#tap( 'SingleCompile' )
    let g:SingleCompile_showquickfixiferror = 1
    if executable('/usr/bin/python2')
        call SingleCompile#SetCompilerTemplate('python', 'python2', 'CPython 2', 'python2', '', '')
        call SingleCompile#ChooseCompiler('python', 'python2')
    endif
    call SingleCompile#SetCompilerTemplate('fish', 'fish', 'Friendly Interactive SHell', 'fish', '', '')
    call SingleCompile#SetCompilerTemplate('tex', 'lualatex', 'luaLaTeX', 'lualatex',
                \ '--file-line-error --interaction=nonstopmode --synctex=1', '')
    call SingleCompile#SetCompilerTemplate('tex', 'xelatex', 'xeLaTeX', 'xelatex',
                \ '-file-line-error -interaction=nonstopmode -synctex=1', '')
    call SingleCompile#SetPriority('tex', 'pdflatex', 80)
    call SingleCompile#SetPriority('tex', 'latex', 50)

    nnoremap <Leader>qc :SCCompile<CR>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"
if dein#tap( 'vim-airline' )
    let g:airline_detect_iminsert=1
    let g:airline_powerline_fonts=1
    let g:airline_theme='solarized'
    let g:airline_section_y = '%{printf("%s%s%s",(&fenc=="utf-8")?"":&fenc,(&ff=="unix")?"":" [".&ff."]",&et?"":" [t]")}'
    let g:airline_section_z0 = '%-4b %-5(0x%B%)'
    let g:airline_section_z = '%3P %{g:airline_symbols.linenr} %3l:%3c'
    let g:airline_mode_map = {
                \ '__' : '-',
                \ 'n'  : 'N',
                \ 'i'  : 'I',
                \ 'R'  : 'R',
                \ 'c'  : 'C',
                \ 'v'  : 'V',
                \ 'V'  : 'V',
                \ '' : 'V',
                \ 's'  : 'S',
                \ 'S'  : 'S',
                \ '' : 'S',
                \ }
    let g:airline#extensions#default#section_truncate_width = {
                \ 'b':  88,
                \ 'x':  70,
                \ 'z0': 60,
                \ 'z':  45,
                \ }
    let g:airline#extensions#default#layout = [
                \ [ 'a', 'b', 'c' ],
                \ [ 'x', 'y', 'z', 'warning' ]
                \ ]
    autocmd User VimtexEventInitPost :AirlineRefresh
    let airline#extensions#xkblayout#enabled=0
    let airline#extensions#keymap#enabled=0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"
if dein#tap( 'vim-fswitch' )
    au! BufEnter *.cpp,*.c,*.C,*.cxx,*.cc,*.CC let b:fswitchdst = 'hpp,h,H,hh,HH,hxx' | let b:fswitchlocs = '../inc,../include'
    au! BufEnter *.hpp,*.h,*.H,*.hh,*.HH,*.hxx let b:fswitchdst = 'cpp,c,C,cc,CC,cxx' | let b:fswitchlocs = '../src'
    let g:fsnonewfiles=1
    nmap <silent> <Leader>aa :FSHere<CR>
    nmap <silent> <Leader>ar :tab FSRight<CR>
    nmap <silent> <Leader>al :tab FSLeft<CR>
    nmap <silent> <Leader>aR :tab FSSplitRight<CR>
    nmap <silent> <Leader>aL :tab FSSplitLeft<CR>
endif

let g:EasyClipEnableBlackHoleRedirectForChangeOperator=0
if dein#tap( 'vim-easyclip' )
    noremap gx x
    noremap gX X
    noremap gm m

    let bindings =
    \ [
    \   ['gr',  '<plug>SubstituteOverMotionMap',  'n',  1],
    \   ['grr',  '<plug>SubstituteLine',  'n',  1],
    \   ['gr',  '<plug>XEasyClipPaste',  'x',  1],
    \   ['gR',  '<plug>SubstituteToEndOfLine',  'n',  1],
    \ ]
    " \   ['ggr',  '<plug>G_SubstituteOverMotionMap',  'n',  1],
    " \   ['ggR',  '<plug>G_SubstituteToEndOfLine',  'n',  1],

    for binding in bindings
        call call('EasyClip#AddWeakMapping', binding)
    endfor
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"

if dein#tap( 'vim-easy-align' )
    vmap <silent> <leader>ea <Plug>(LiveEasyAlign)
    vmap <silent> <leader>eA <Plug>(EasyAlign)
    nmap <silent> <leader>ea <Plug>(LiveEasyAlign)
    nmap <silent> <leader>et  :let p=getpos('.')<CR>vie:EasyAlign * &<CR>:call setpos('.', p)<CR>
    nmap <silent> <leader>es  :let p=getpos('.')<CR>vaE:EasyAlign *\ <CR>:call setpos('.', p)<CR>
    nmap <silent> <leader>e-- :let p=getpos('.')<CR>vaE:EasyAlign */ -- /<CR>:call setpos('.', p)<CR>
    vmap <silent> <leader>et  :'<,'>EasyAlign * &<CR>
    vmap <silent> <leader>es  :'<,'>EasyAlign *\ <CR>
    vmap <silent> <leader>e-- :'<,'>EasyAlign */ -- /<CR>
endif

if dein#tap( 'vim-transpose' )
    vmap <silent> <leader>et :TransposeInteractive<CR>
endif

if dein#tap( 'vim-textmanip' )
    let g:textmanip_enable_mappings=0
    let g:textmanip_move_ignore_shiftwidth=1
    if has("gui_running")
        xmap <M-d> <Plug>(textmanip-duplicate-down)
        nmap <M-d> <Plug>(textmanip-duplicate-down)
        xmap <M-D> <Plug>(textmanip-duplicate-up)
        nmap <M-D> <Plug>(textmanip-duplicate-up)

        xmap <C-j> <Plug>(textmanip-move-down)
        xmap <C-k> <Plug>(textmanip-move-up)
        xmap <C-h> <Plug>(textmanip-move-left)
        xmap <C-l> <Plug>(textmanip-move-right)
    else
        xmap <Space>d <Plug>(textmanip-duplicate-down)
        nmap <Space>d <Plug>(textmanip-duplicate-down)
        xmap <Space>D <Plug>(textmanip-duplicate-up)
        nmap <Space>D <Plug>(textmanip-duplicate-up)

        xmap <C-j> <Plug>(textmanip-move-down)
        xmap <C-k> <Plug>(textmanip-move-up)
        xmap <C-h> <Plug>(textmanip-move-left)
        xmap <C-l> <Plug>(textmanip-move-right)
    endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"
" Matchit (included in default scripts)
au FileType text,txt let b:match_words="“:”,‘:’,«:»,„:“"

if dein#tap( 'vim-sandwich' )
    let g:TexEnvironments = [
                \   'array', 'center', 'description', 'enumerate', 'eqnarray', 'equation',
                \   'equation*', 'figure', 'flushleft', 'flushright', 'itemize', 'list',
                \   'minipage', 'picture', 'quotation', 'quote', 'tabbing', 'table',
                \   'tabular', 'tabular*', 'thebibliography', 'theorem', 'titlepage',
                \   'verbatim', 'verse'
                \ ]

    function! TexEnvCompl(argread, cmdline, cursorpos) abort
        let n = strlen(a:argread)
        let list = copy(g:TexEnvironments)
        if n > 0
            let list = filter(list, 'v:val[: n-1] ==# a:argread')
        endif
        return list
    endfunction

    function! TexEnvInput(is_head) abort
        if a:is_head
            let b:TexEnvLast = input('Environment-name: ', '', 'customlist,TexEnvCompl')
            let command = printf('\begin{%s}', b:TexEnvLast)
        else
            let command = printf('\end{%s}', b:TexEnvLast)
        endif
        return command
    endfunction

    function! TexCmdInput(is_head) abort
        if a:is_head
            let l:TexCmdLast = input('Command: ', '')
            let command = printf('\%s{', l:TexCmdLast)
        else
            let command = '}'
        endif
        return command
    endfunction

    nmap s <Nop>
    xmap s <Nop>
    let g:sandwich#recipes = [
                \	{'buns': ["‘", "’"],                 'nesting': 1, 'input': [ "u'" ]  },
                \	{'buns': ['“', '”'],                 'nesting': 1, 'input': [ 'u"' ]  },
                \	{'buns': ['„', '“'],                 'nesting': 1, 'input': [ 'u,' ]  },
                \	{'buns': ['«', '»'],                 'nesting': 1, 'input': [ 'u<' ]  },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ["``", "``"],               'nesting': 0, 'input': [ "2`" ], 'filetype': ['rst'] },
                \   {'buns': ["'''", "'''"],             'nesting': 0, 'input': [ "3'" ], 'filetype': ['python'] },
                \   {'buns': ['"""', '"""'],             'nesting': 0, 'input': [ '3"' ], 'filetype': ['python'] },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ["`", "'"],                 'nesting': 1, 'input': [ "l'", "l`" ], 'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ["``", "''"],               'nesting': 1, 'input': [ 'l"' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['"`', "\"'"],              'nesting': 1, 'input': [ 'L"' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': [",,", "``"],               'nesting': 1, 'input': [ 'l,' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['<<', '>>'],               'nesting': 1, 'input': [ 'l<' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\{', '\}'],               'nesting': 1, 'input': [ '\{' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\[', '\]'],               'nesting': 1, 'input': [ '\[' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ['\left(',           '\right)'],           'nesting': 1, 'input': [ 'm(' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '(,)' },
                \	{'buns': ['\left[',           '\right]'],           'nesting': 1, 'input': [ 'm[' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '[,]' },
                \	{'buns': ['\left|',           '\right|'],           'nesting': 1, 'input': [ 'm|' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\left\{',          '\right\}'],          'nesting': 1, 'input': [ 'm{' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\left\langle ',    '\right\rangle '],    'nesting': 1, 'input': [ 'm<' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\bigleft(',        '\bigright)'],        'nesting': 1, 'input': [ 'M(' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '(,)' },
                \	{'buns': ['\bigleft[',        '\bigright]'],        'nesting': 1, 'input': [ 'M[' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '[,]' },
                \	{'buns': ['\bigleft|',        '\bigright|'],        'nesting': 1, 'input': [ 'M|' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\bigleft\{',       '\bigright\}'],       'nesting': 1, 'input': [ 'M{' ],    'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\bigleft\langle ', '\bigright\rangle '], 'nesting': 1, 'input': [ 'M<' ],    'filetype': ['tex', 'plaintex', 'rst'] },
                \ ]
    "if exists( 'g:sandwich#default_recipes' )
    let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)+g:sandwich#recipes
    "else
        "let g:sandwich#recipes = []+g:sandwich#recipes
    "end

    let g:sandwich#recipes += [
                \   {
                \       'buns'    : ['‘\|“\|«', '’\|”\|»'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['U'],
                \   },
                \   {
                \       'buns'    : ['\begingroup', '\endgroup'],
                \       'nesting' : 1,
                \       'input': [ '\gr' ],
                \       'filetype': ['tex', 'plaintex'],
                \       'linewise': 1
                \   },
                \   {
                \       'buns'    : ['\toprule', '\bottomrule'],
                \       'nesting' : 1,
                \       'input': [ '\tr', '\br' ],
                \       'filetype': ['tex', 'plaintex'],
                \       'linewise': 1
                \   },
                \   {
                \       'buns'    : ['TexCmdInput(1)', 'TexCmdInput(0)'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'expr'    : 1,
                \       'nesting' : 1,
                \       'input'   : ['c'],
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \   {
                \       'buns'    : ['TexEnvInput(1)', 'TexEnvInput(0)'],
                \       'filetype': ['tex', 'plaintex'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'expr'    : 1,
                \       'nesting' : 1,
                \       'linewise' : 1,
                \       'input'   : ['e'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 0
                \   },
                \   {
                \       'buns'    : ['\\\a\+\*\?{', '}'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['c'],
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \   {
                \       'buns'    : ['\\begin{[^}]*}\(\[.*\]\)\?', '\\end{[^}]*}'],
                \       'filetype': ['tex', 'plaintex'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'linewise' : 1,
                \       'input'   : ['e'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 0
                \   },
                \   {
                \       'buns'    : ['\(\\left\((\|\[\||\|\\{\|\\langle\|\\lvert\)\|\\left\.\)', '\(\\right\()\|]\||\|\\}\|\\rangle\|\\rvert\)\|\\right\.\)'],
                \       'filetype': ['tex', 'plaintex', 'rst'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['ma'],
                \       'indentkeys-' : '{,},0{,0}',
                \       'autoindent' : 0
                \   },
                \ ]
    let g:sandwich#recipes += [
                \	{
                \       'buns': ['{ ', ' }'],
                \       'input' : ['}'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'skip_break': 1,
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \	{
                \       'buns': ['[ ', ' ]'],
                \       'input' : [']'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '[,]'
                \   },
                \	{
                \       'buns': ['( ', ' )'],
                \       'input' : [')'],
                \       'kind'    : ['add', 'replace'],
                \       'action'  : ['add'],
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '(,)'
                \   },
                \	{
                \       'buns': ['{\s*', '\s*}'],
                \       'input' : ['}'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'skip_break': 1,
                \       'indentkeys-' : '{,},0{,0}'
                \   },
                \	{
                \       'buns': ['\[\s*', '\s*\]'],
                \       'input' : [']'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '[,]'
                \   },
                \	{
                \       'buns': ['(\s*', '\s*)'],
                \       'input' : [')'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting': 1,
                \       'match_syntax': 1,
                \       'indentkeys-' : '(,)'
                \   },
                \ ]

    let g:sandwich#recipes += [
                \   {
                \       'buns'    : ['\(if\|function\|switch\|for\|while\)', 'end'],
                \       'filetype': ['fish'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'input'   : ['S'],
                \   },
                \   {
                \       'buns'    : ['^\s*\(if\|function\|switch\|for\|while\).*', '^\s*end\s*$'],
                \       'filetype': ['fish'],
                \       'kind'    : ['delete', 'replace', 'auto', 'query'],
                \       'regex'   : 1,
                \       'nesting' : 1,
                \       'linewise': 1,
                \       'input'   : ['s'],
                \   },
                \   {
                \       'buns'    : ['function', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['ff'],
                \   },
                \   {
                \       'buns'    : ['begin', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fb'],
                \   },
                \   {
                \       'buns'    : ['while', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fw'],
                \   },
                \   {
                \       'buns'    : ['for', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fc'],
                \   },
                \   {
                \       'buns'    : ['switch', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fs'],
                \   },
                \   {
                \       'buns'    : ['if', 'end'],
                \       'filetype': ['fish'],
                \       'nesting' : 1,
                \       'input'   : ['fi'],
                \   },
                \ ]
endif

if dein#tap( 'vim-textobj-user' )
    " Text Objects
    "
    " Default text objects:
    "     w - word
    "     W - word (all characters)
    "     s - sentence
    "     p - paragraph
    "     (), {}, [], '', "", <>, ``
    "     b - () block
    "     B - {} block
    "     t - tag block
    "
    " Other motions:
    "     ,w ,b ,e - camel case motions (camelcasemotion)
    "     (i)y - pasted text (vimrc)
    "     a=, ax, i= - conflicts
    "
    " Textobj-user motions
    "     l - line
    "     v - continuous line
    "     c - comment
    "     C - comment
    "     E - entire
    "     i - indent, I - indent
    "     , - parameter (disabled)
    "     . - parameter
    "     f - function, ]pf, [pf
    "     c - class, ]pc, [pc
    "     F - python function
    "     P - python class
    "     @ - function call
    "     u - url
    "     o - indblock, O - indblock
    "     da, dd, df, dt, dz - datetime: auto, date, full, time, tz
    "     _<char> - between characters
    "
    " Latex:
    "     $ - inline math
    "     & - cell content
    "     e - environment
    "     d - delimiters
    xmap aF <Plug>(textobj-python-function-a)
    omap aF <Plug>(textobj-python-function-a)
    xmap iF <Plug>(textobj-python-function-i)
    omap iF <Plug>(textobj-python-function-i)
    xmap aP <Plug>(textobj-python-class-a)
    omap aP <Plug>(textobj-python-class-a)
    xmap iP <Plug>(textobj-python-class-i)
    omap iP <Plug>(textobj-python-class-i)
    let g:textobj_functioncall_no_default_key_mappings = 1
    xmap i@ <Plug>(textobj-functioncall-i)
    omap i@ <Plug>(textobj-functioncall-i)
    xmap a@ <Plug>(textobj-functioncall-a)
    omap a@ <Plug>(textobj-functioncall-a)
    let g:textobj_entire_no_default_key_mappings=1
    xmap iE <Plug>(textobj-entire-i)
    omap iE <Plug>(textobj-entire-i)
    xmap aE <Plug>(textobj-entire-a)
    omap aE <Plug>(textobj-entire-a)
    let g:textobj_parameter_no_default_key_mappings=1
    xmap a. <Plug>(textobj-parameter-a)
    omap a. <Plug>(textobj-parameter-a)
    xmap i. <Plug>(textobj-parameter-i)
    omap i. <Plug>(textobj-parameter-i)
    let g:textobj_between_no_default_key_mappings=1
    xmap a_ <Plug>(textobj-between-a)
    omap a_ <Plug>(textobj-between-a)
    xmap i_ <Plug>(textobj-between-i)
    omap i_ <Plug>(textobj-between-i)

    if dein#tap( 'vim-textobj-user' )
        call textobj#user#plugin('mylatex', {
                    \   'latex-amp': {
                    \     'pattern': [ '\(&\|^\)\s*', '\s*\(&\|\\\\\)' ],
                    \     'select-a': 'a&',
                    \     'select-i': 'i&'
                    \   },
                    \ })
    end
endif

"let s:quotes = [ "``\\zs.\\{-}\\ze''",
"\ "\"`\\zs.\\{-}\\ze\"'",
"\ "<<\\zs.\\{-}\\ze>>",
"\ "`\\zs.\\{-}\\ze'",
"\ "“\\zs.\\{-}\\ze”",
"\ "„\\zs.\\{-}\\ze“",
"\ "«\\zs.\\{-}\\ze»",
"\ "‘\\zs.\\{-}\\ze’",
"\ ]
"let s:aquotes = [ "``.\\{-}''",
"\ "\"`.\\{-}\"'",
"\ "<<.\\{-}>>",
"\ "`.\\{-}'",
"\ "“.\\{-}”",
"\ "„.\\{-}“",
"\ "«.\\{-}»",
"\ "‘.\\{-}’",
"\ ]
"\   'latex-left-right': {
"\     'pattern': [ '\\\(big\|Big\)\?left\((\|\[\|\\{\||\|\\langle\|\.\)', '\\\(big\|Big\)\?right\()\|]\|\\}\||\|\\rangle\|\.\)' ],
"\     'select-a': 'az',
"\     'select-i': 'iz'
"\   }
"\ })
"\   'iquotes': {
"\     'pattern': join( s:quotes, '\|' ),
"\     'select': [ 'iq' ]
"\   },
"\   'aquotes': {
"\     'pattern': join( s:aquotes, '\|' ),
"\     'select': [ 'aq' ]
"\   },
"\   'latex-quotes-rus': {
"\     'pattern': [ "\"`", "\"'" ],
"\     'select-a': 'aQr',
"\     'select-i': 'iQr'
"\   },
"\   'latex-quotes-eng': {
"\     'pattern': [ "``", "''" ],
"\     'select-a': 'aQe',
"\     'select-i': 'iQe'
"\   },
"\   'latex-quotes-french': {
"\     'pattern': [ "<<", ">>" ],
"\     'select-a': 'aQf',
"\     'select-i': 'iQf'
"\   },
"\   'latex-quotes-eng-single': {
"\     'pattern': [ "`", "'" ],
"\     'select-a': 'aQ1',
"\     'select-i': 'iQ1'
"\   },
"\   'quotes-rus': {
"\     'pattern': [ "„", "“" ],
"\     'select-a': 'aUr',
"\     'select-i': 'iUr'
"\   },
"\   'quotes-eng': {
"\     'pattern': [ "“", "”" ],
"\     'select-a': 'aUe',
"\     'select-i': 'iUe'
"\   },
"\   'quotes-eng-single': {
"\     'pattern': [ "‘", "’" ],
"\     'select-a': 'aU1',
"\     'select-i': 'iU1'
"\   },
"\   'quotes-french': {
"\     'pattern': [ "«", "»" ],
"\     'select-a': 'aUf',
"\     'select-i': 'iUf'
"\   },

let g:ConflictMotions_TakeMappingPrefix = '<Leader>='

nmap <Leader><C-O>      <Plug>EnhancedJumpsOlder
nmap <Leader><C-I>      <Plug>EnhancedJumpsNewer
nmap <Leader><Leader><C-O> <Plug>EnhancedJumpsLocalOlder
nmap <Leader><Leader><C-I> <Plug>EnhancedJumpsLocalNewer
nmap <M-o>      <Plug>EnhancedJumpsRemoteOlder
nmap <M-i>      <Plug>EnhancedJumpsRemoteNewer
let g:EnhancedJumps_CaptureJumpMessages = 0
