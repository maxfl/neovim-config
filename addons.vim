if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin( expand('~/.vim/bundle/') )
let g:dein#types#git#clone_depth = 1

call dein#add('Shougo/dein.vim')
call dein#local("~/.vim/bundle_local")

call dein#add('chrisbra/SudoEdit.vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tim Pope
"
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-abolish')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface and highlight
"
call dein#add('vim-scripts/moria')
call dein#add('NLKNguyen/papercolor-theme')
call dein#add('altercation/vim-colors-solarized', { 'hook_add' : "colorscheme solarized"})
call dein#add('jszakmeister/vim-togglecursor')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
call dein#add('jiangmiao/auto-pairs')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Motion
"call dein#add('bogado/file-line')
call dein#add('kopischke/vim-fetch')
call dein#add('tmhedberg/indent-motion')
call dein#add('Lokaltog/vim-easymotion')
call dein#add('rhysd/clever-f.vim')
"call dein#add('vim-scripts/camelcasemotion')
call dein#add('bkad/camelcasemotion')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"call dein#add('mjbrownie/swapit')
call dein#add('AndrewRadev/switch.vim')
call dein#add('scrooloose/nerdcommenter')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"
call dein#add('ciaranm/detectindent')

call dein#add('t9md/vim-quickhl')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ingo Karkat
"
"local call dein#add('vim-scripts/ingo-library') "needed by ConflictMotions
call dein#add("vim-scripts/CountJump")    "needed by Conflict*
"local call dein#add("vim-scripts/ConflictDetection")
"local call dein#add("vim-scripts/ConflictMotions")
call dein#add("vim-scripts/visualrepeat")
call dein#add('vim-scripts/RelativeNumberCurrentWindow')
call dein#add('vim-scripts/ChangeGlobally')
call dein#add('vim-scripts/RangeMacro')
"local call dein#add('vim-scripts/ExtractMatches')
call dein#add('vim-scripts/RepeatableYank')
"local call dein#add('vim-scripts/SwapText')
"local call dein#add('vim-scripts/UnconditionalPaste')
"local call dein#add("vim-scripts/EnhancedJumps")
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
"
if !has('nvim')
    call dein#add('Shougo/vimproc', { 'build' : 'make' } )
endif

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
if has("nvim") || !has("gui")
    call dein#add('francoiscabrol/ranger.vim', { 'hook_add' : "let g:ranger_replace_netrw = 0\n
                                                             \ let g:NERDTreeHijackNetrw = 0"} )
    call dein#add('Shougo/vimfiler.vim', { 'hook_add' : "
                \ nnoremap <Leader>ws :exe 'VimFiler '.expand('%:p:h')<CR>\n
                \ "})
else
    call dein#add('Shougo/vimfiler.vim', { 'hook_add' : "
                \ let g:vimfiler_as_default_explorer = 1\n
                \ nnoremap <Leader>ws :exe 'VimFiler '.expand('%:p:h')<CR>\n
                \ "})
endif
call dein#add('Shougo/neossh.vim')

if has( 'nvim' )
    call dein#add('Shougo/deoplete.nvim', { 'hook_add' : "
                    \ let g:deoplete#enable_at_startup = 1 \n
                    \ let g:deoplete#disable_auto_complete = 0 \n
                    \ let g:deoplete#enable_smart_case = 1 \n
                    \ let g:deoplete#auto_complete_start_length = 2 \n
                    \ inoremap <expr><C-X><C-X> neocomplete#manual_complete() \n
                    \ "})
else
    if has( 'lua' ) && ( v:version>703 || ( v:version==703 && has( 'patch885' ) ) )
        call dein#add('Shougo/neocomplete.vim', { 'hook_add' : "
                    \ let g:neocomplete#enable_insert_char_pre = 0 \n
                    \ let g:neocomplete#enable_at_startup = 1 \n
                    \ let g:neocomplete#disable_auto_complete = 1 \n
                    \ let g:neocomplete#enable_smart_case = 1 \n
                    \ let g:neocomplete#auto_completion_start_length = 4 \n
                    \ inoremap <expr><C-X><C-X> neocomplete#start_manual_complete() \n
                    \ "})
    endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"
command! -nargs=0 TagbarToggle        call tagbar#ToggleWindow()
call dein#add('majutsushi/tagbar')
call dein#add('vim-airline/vim-airline', { 'depends': 'tagbar' })
call dein#add('vim-airline/vim-airline-themes')
call dein#add('paranoida/vim-airlineish')
"call dein#add('ntpeters/vim-airline-colornum')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"
call dein#add('svermeulen/vim-easyclip')
if has('python')
    call dein#add('honza/vim-snippets')
    call dein#add('SirVer/ultisnips')
else
    call dein#disable('ultisnips')
end
call dein#add('derekwyatt/vim-fswitch')
"call dein#add('jpetrie/vim-counterpoint')

"
" tmux
"
"call dein#add('benmills/vimux')
"call dein#add('christoomey/vim-tmux-navigator')
"call dein#add('tmux-plugins/vim-tmux')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tim Pope
"
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-dispatch')
call dein#add('tpope/vim-fugitive')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"
call dein#add('sjl/gundo.vim')
call dein#add('junegunn/vim-easy-align')
call dein#add('salsifis/vim-transpose')
call dein#add('t9md/vim-textmanip')
call dein#add('vim-scripts/ExplainPattern')
call dein#add('vim-scripts/Rename')
call dein#add('vim-scripts/VOoM')

" Diff tools
call dein#add('will133/vim-dirdiff')
call dein#add('AndrewRadev/linediff.vim')
call dein#add('vim-scripts/diffchar.vim')
let g:DiffModeSync=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
"call dein#add('klen/python-mode')
call dein#add('lervag/vimtex')
call dein#add('davidoc/taskpaper.vim')
call dein#add('aliva/vim-fish')
"call dein#add('lifepillar/vim-mucomplete')
"call dein#add('joeytwiddle/vim-multiple-cursors')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('nhooyr/neoman.vim')
call dein#add('vim-ctrlspace/vim-ctrlspace')

call dein#add('brooth/far.vim')

call dein#add('thinca/vim-prettyprint')
call dein#add('romgrk/pp.vim')

call dein#add('powerman/vim-plugin-AnsiEsc')
call dein#add('s3rvac/vim-syntax-redminewiki')
"call dein#add('lyokha/vim-xkbswitch')
call dein#add('xolox/vim-misc')

call dein#add('Rykka/riv.vim', { 'hook_add' : "let g:riv_ignored_imaps = '<Tab>,<S-Tab>'" })

call dein#add('chrisbra/unicode.vim')
call dein#add('joom/latex-unicoder.vim')

call dein#add('mileszs/ack.vim')
call dein#add('wgurecky/vimSum')

call dein#add('bronson/vim-trailing-whitespace')

"call dein#add('Shougo/unite-help')
call dein#add('Shougo/vimshell.vim')

call dein#add('moll/vim-bbye')

call dein#add('chrisbra/vim-diff-enhanced')
"call dein#add('machakann/vim-sandwich')

call dein#add('plasticboy/vim-markdown')
call dein#add('JuliaEditorSupport/julia-vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
call dein#add('xolox/vim-easytags')
call dein#add('kien/rainbow_parentheses.vim')
call dein#add('nathanaelkane/vim-indent-guides')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and Folders
call dein#add('ervandew/archive')
call dein#add('xolox/vim-shell')

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
call dein#add('ivanov/vim-ipython')

call dein#add('neomake/neomake')

call dein#end()

if dein#tap( 'SudoEdit.vim' )
    inoremap <S-F2> :SudoWrite<CR>
endif

if dein#tap( 'camelcasemotion' )
    call camelcasemotion#CreateMotionMappings(',')
endif

if dein#tap( 'vim-quickhl' )
    nmap <leader>m <Plug>(quickhl-manual-this)
    xmap <leader>m <Plug>(quickhl-manual-this)
    nmap <leader>n <Plug>(quickhl-manual-reset)
    xmap <leader>n <Plug>(quickhl-manual-reset)

    nmap <leader>M :exe "QuickhlManualAdd! \\<".expand('<cword>')."\\>"<CR>
    xmap <leader>M :exe "QuickhlManualAdd! \\<".expand('<cword>')."\\>"<CR>
    nmap <leader>N :exe "QuickhlManualDelete! \\<".expand('<cword>')."\\>"<CR>
    xmap <leader>N :exe "QuickhlManualDelete! \\<".expand('<cword>')."\\>"<CR>

    "nmap <Space>j <Plug>(quickhl-cword-toggle)
    "nmap <Space>] <Plug>(quickhl-tag-toggle)
    map <leader>H <Plug>(operator-quickhl-manual-this-motion)
end

if dein#tap( 'auto-pairs' )
    let g:AutoPairsFlyMode = 1
    let g:AutoPairsShortcutToggle=''
    noremap <Leader>( :call AutoPairsToggle()<CR>
    " Default pairs
    let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
    " Add unicode quotation marks
    call extend( g:AutoPairs, {'“':'”', '‘' : '’', '„':'“', '«':'»'} )
endif

if dein#tap( 'clever-f.vim' )
    nnoremap <Leader>fr <Plug>(clever-f-reset)
    nnoremap ; <Plug>(clever-f-repeat-forward)
    "nnoremap , <Plug>(clever-f-repeat-back)
endif

if dein#tap( 'vim-easymotion' )
    nnoremap <Leader><Leader>. <Plug>(easymotion-repeat)
endif

if dein#tap( 'swapit' )
    au BufRead,BufNewFile * SwapList YES/NO YES NO
    au BufRead,BufNewFile * SwapList TODO/DONE TODO DONE
    au BufRead,BufNewFile * SwapList Days
endif

if dein#tap( 'switch.vim' )
    let g:switch_mapping = "-"
    let g:switch_reverse_mapping = "+"
    let g:switch_find_smallest_match=0
    let g:switch_custom_definitions =
        \ [
        \   [ '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉' ],
        \   [ '⁰', '¹', '²', '³', '⁴', '⁵', '⁶', '⁷', '⁸', '⁹' ],
        \   [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' ],
        \   [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
        \   [ 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье' ],
        \   [ 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота', 'воскресенье' ],
        \   [ 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December' ],
        \   [ 'january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december' ],
        \   [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ],
        \   [ 'jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec' ],
        \   [ 'black', 'white', 'grey', 'red', 'green', 'blue', 'cyan', 'magenta', 'yellow' ],
        \   [ 'TODO', 'DONE', 'XXX', 'FIXME' ],
        \   [ 'TRUE', 'FALSE' ],
        \   { '\C\<yes\>': 'no', '\C\<no\>':  'yes',  }, { '\C\<Yes\>': 'No', '\C\<No\>':  'Yes',  }, { '\C\<YES\>': 'NO', '\C\<NO\>':  'YES',  },
        \   { '\C\<on\>': 'off', '\C\<off\>':  'on',  }, { '\C\<On\>': 'Off', '\C\<Off\>':  'On',  }, { '\C\<ON\>': 'OFF', '\C\<OFF\>':  'ON',  },
        \   { '\C\<AND\>': 'OR', '\C\<OR\>':  'AND',  }, { '\C\<and\>': 'or', '\C\<or\>':  'and',  },
        \   [ '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' ],
        \ ]
    autocmd FileType gitrebase let b:switch_custom_definitions =
        \ [
        \   [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
        \ ]
    autocmd FileType tex,plaintex let b:switch_custom_definitions =
        \ [
        \    [ '\\tiny', '\\scriptsize', '\\footnotesize', '\\small', '\\normalsize', '\\large', '\\Large', '\\LARGE', '\\huge', '\\Huge' ],
        \    [ '\\displaystyle', '\\scriptstyle', '\\scriptscriptstyle', '\\textstyle' ],
        \    [ '\\part', '\\chapter', '\\section', '\\subsection', '\\subsubsection', '\\paragraph', '\\subparagraph' ],
        \    [ 'part:', 'chap:', 'sec:', 'subsec:', 'subsubsec:' ],
        \    [ 'article', 'report', 'book', 'letter', 'slides' ],
        \    [ 'a4paper', 'a5paper', 'b5paper', 'executivepaper', 'legalpaper', 'letterpaper', 'beamer', 'subfiles', 'standalone' ],
        \    [ 'onecolumn', 'twocolumn' ],
        \    [ 'oneside', 'twoside' ],
        \    [ 'draft', 'final' ],
        \    [ 'AnnArbor', 'Antibes', 'Bergen', 'Berkeley',
        \      'Berlin', 'Boadilla', 'CambridgeUS', 'Copenhagen', 'Darmstadt',
        \      'Dresden', 'Frankfurt', 'Goettingen', 'Hannover', 'Ilmenau',
        \      'JuanLesPins', 'Luebeck', 'Madrid', 'Malmoe', 'Marburg',
        \      'Montpellier', 'PaloAlto', 'Pittsburgh', 'Rochester', 'Singapore',
        \      'Szeged', 'Warsaw' ]
        \ ]
endif


let g:ConflictMotions_TakeMappingPrefix = '<Leader>='

nmap <Leader><C-O>      <Plug>EnhancedJumpsOlder
nmap <Leader><C-I>      <Plug>EnhancedJumpsNewer
nmap <Leader><Leader><C-O> <Plug>EnhancedJumpsLocalOlder
nmap <Leader><Leader><C-I> <Plug>EnhancedJumpsLocalNewer
nmap <M-o>      <Plug>EnhancedJumpsRemoteOlder
nmap <M-i>      <Plug>EnhancedJumpsRemoteNewer
let g:EnhancedJumps_CaptureJumpMessages = 0

if dein#tap( 'vim-surround' )
    " q - latex double english quotes
    let g:surround_113 = "“\r”"
    " Q - latex double russian quotes
    let g:surround_81  = "„\r“"
    " f - latex double french quotes
    let g:surround_102 = "«\r»"
endif
"if dein#tap( 'vim-mucomplete' )
"set shortmess+=c
"set completeopt+=menuone
""let g:mucomplete#enable_auto_at_startup = 1
"let g:mucomplete#chains = {
"\ 'default' : ['omni', 'user', 'ulti', 'tags', 'file', 'keyp', 'keyn', 'dict']
"\ }
"inoremap    <silent> <plug>(MUcompleteTab) <C-j>
"endif

if dein#tap( 'vim-multiple-cursors' )
    let g:multi_cursor_start_key='<C-n>'
    let g:multi_cursor_quit_key='<C-z>'
    "let g:multi_cursor_exit_from_insert_mode=1
    "let g:multi_cursor_exit_from_visual_mode=1

    function! Multiple_cursors_before()
        if exists(':NeoCompleteLock')==2
            exe 'NeoCompleteLock'
        endif
        if dein#tap('clever-f.vim')
            nunmap f
            xunmap f
            ounmap f
            nunmap F
            xunmap F
            ounmap F
            nunmap t
            xunmap t
            ounmap t
            nunmap T
            xunmap T
            ounmap T
        endif
    endfunction

    " Called once only when the multiple selection is canceled (default <Esc>)
    function! Multiple_cursors_after()
        if exists(':NeoCompleteUnlock')==2
            exe 'NeoCompleteUnlock'
        endif
        if dein#tap('clever-f.vim')
            nmap f <Plug>(clever-f-f)
            xmap f <Plug>(clever-f-f)
            omap f <Plug>(clever-f-f)
            nmap F <Plug>(clever-f-F)
            xmap F <Plug>(clever-f-F)
            omap F <Plug>(clever-f-F)
            nmap t <Plug>(clever-f-t)
            xmap t <Plug>(clever-f-t)
            omap t <Plug>(clever-f-t)
            nmap T <Plug>(clever-f-T)
            xmap T <Plug>(clever-f-T)
            omap T <Plug>(clever-f-T)
        endif
    endfunction

endif

"if dein#tap( 'vim-notes' )
    "let g:notes_directories=['/home/gonchar/yadisk/work/notes']
"endif

if dein#tap( 'vim-xkbswitch' )
    let g:XkbSwitchEnabled = 1
    let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'
    let g:XkbSwitchILayout = 'us'
    let g:XkbSwitchNLayout = 'us'
endif

if dein#tap( 'latex-unicoder.vim' )
    let g:unicoder_no_map=1
    "nnoremap <C-l> :call unicoder#start(0)<CR>
    "inoremap <C-l> <Esc>:call unicoder#start(1)<CR>
    "vnoremap <C-l> :<C-u>call unicoder#selection()<CR>
endif

if dein#tap( 'vim-trailing-whitespace' )
    nnoremap <Leader>rts :FixWhitespace<CR>
    autocmd BufWritePre *.py,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace
endif

if dein#tap( 'vim-bbye' )
    nnoremap ZW :Bdelete<CR>
    nnoremap ZX :write<CR>:Bdelete<CR>
endif

if dein#tap( 'vim-shell' )
    au BufRead,BufNew * let g:shell_fullscreen_items="mT"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags and outline
let g:easytags_file='./tags'
let g:easytags_ignored_filetypes=''
let g:easytags_on_cursorhold = 0
let g:easytags_auto_update = 0
let g:easytags_updatetime_min = 600000

if dein#tap( 'rainbow_parentheses.vim' )
    nnoremap <Leader>R :RainbowParenthesesToggle<CR>
endif

if has( 'gui_running' )
    let g:indent_guides_color_change_percent=2
else
    let g:indent_guides_guide_size=1
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and Folders
if dein#tap( 'vim-shell' )
    let g:shell_mappings_enabled = 0
    let g:shell_fullscreen_items = 'mTe'
    nnoremap <Leader>op :Open<CR>
    nnoremap <Leader>if :Fullscreen<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compilation and running
if dein#tap('vim-ipython')
    let g:ipy_perform_mappings=0
endif

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
if dein#tap( 'vim-dirdiff' )
    map <unique> <Leader>Dg <Plug>DirDiffGet
    map <unique> <Leader>Dp <Plug>DirDiffPut
    map <unique> <Leader>Dj <Plug>DirDiffNext
    map <unique> <Leader>Dk <Plug>DirDiffPrev
endif

if dein#tap( 'linediff.vim' )
    vmap <Leader>dl :Linediff<CR>
    nmap <Leader>dl :Linediff<CR>
    nmap <Leader>dr :LinediffReset<CR>
endif

if dein#tap( 'VOoM' )
    let g:voom_ft_modes = { 'python':'python', 'tex':'latex' }
    let g:voom_tree_width = 60
    let g:voom_tree_placement='right'
    nmap <silent> <Leader>wo :VoomToggle<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype
if dein#tap( 'python-mode' )
    let g:pymode = 1
    let g:pymode_lint = 0
    let g:pymode_rope = 0
    let g:pymode_rope_guess_project = 0
    let g:pymode_virtualenv = 0
    let g:pymode_options = 0
    let g:pymode_trim_whitespaces = 0
endif

if dein#tap( 'vimtex' )
    let g:vimtex_view_method='zathura'
    "let g:vimtex_view_method='mupdf'
    let g:vimtex_imaps_enabled=0
    let g:vimtex_index_split_width=60
    let g:vimtex_index_split_pos='vert botright'

    noremap <localleader>lL <plug>(vimtex-compile-ss)
    noremap <localleader>l0 :let b:vimtex.compiler.continuous=!b:vimtex.compiler.continuous<CR>:let b:vimtex.compiler.continuous<CR>

    let g:vimtex_compiler_latexmk = {
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 0,
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    let g:neocomplete#sources#omni#input_patterns.tex =
                \ '\v\\%('
                \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
                \ . '|hyperref\s*\[[^]]*'
                \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|%(include%(only)?|input)\s*\{[^}]*'
                \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
                \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . '|usepackage%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . '|documentclass%(\s*\[[^]]*\])?\s*\{[^}]*'
                \ . ')'
endif

if dein#tap( 'LaTeX-Box' )
    let g:LatexBox_ignore_warnings =
                \['Underfull',
                \ 'Overfull',
                \ 'specifier changed to',
                \ "Option `pdfauthor' has already been used",
                \ 'Font shape',
                \ 'Size substitutions with difference',
                \ 'multiple pdfs with page group included' ]
    " let g:LatexBox_show_warnings=0
    " let g:LatexBox_latexmk_async=1
    let g:LatexBox_quickfix=2
    "let g:LatexBox_no_mappings=1
    let g:LatexBox_Folding=1
    let g:LatexBox_fold_automatic=0
    let g:LatexBox_eq_env_patterns =
            \   'equation\|gather\|multiline\|align'
            \   . '\|flalign\|alignat\|eqnarray\|empheq'
    let g:LatexBox_ref_pattern
            \ = '\m\C\\v\?\(eq\|page\|[cC]\|[lL]abelc\|sub\)\?ref\*\?\_\s*{'

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"
if dein#tap( 'tagbar' )
    nnoremap <silent> <Leader>wt :TagbarToggle<CR>
    let g:tagbar_autoclose = 1
    let g:tagbar_compact = 1
    let g:tagbar_autofocus = 1
    let g:tagbar_autoshowtag = 1
    let g:tagbar_type_tex = {
                \ 'ctagstype' : 'latex',
                \ 'kinds'     : [
                \ 's:sections',
                \ 'g:graphics',
                \ 'l:labels',
                \ 'r:refs:1',
                \ 'p:pagerefs:1',
                \ 'f:includes'
                \ ],
                \ 'sort'    : 0,
                \ }
    let g:tagbar_type_make = {
                \ 'ctagstype' : 'make',
                \ 'kinds'     : [
                \ 'm:macros',
                \ 't:task',
                \ ],
                \ 'sort'    : 0,
                \ }
endif

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
"elseif dein#tap( 'vim-counterpoint' )
    "let g:counterpoint_search_paths = [ '../include', '../inc', '../src' ]
    "nmap <silent> <Leader>aa :CounterpointNext!<CR>
    "nmap <silent> <Leader>ar :tab FSRight<CR>
    "nmap <silent> <Leader>al :tab FSLeft<CR>
    "nmap <silent> <Leader>aR :tab FSSplitRight<CR>
    "nmap <silent> <Leader>aL :tab FSSplitLeft<CR>
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
        call call("EasyClip#AddWeakMapping", binding)
    endfor
endif

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tim Pope
"
if dein#tap( 'vim-dispatch' )
    nnoremap <Leader>qm :Make<CR>
    nnoremap <Leader>qM :Make!<CR>
    nnoremap <Leader>qc :Copen<CR>
    nnoremap <Leader>qC :Copen!<CR>
else
    nnoremap <Leader>qm :make<CR>
endif
if dein#tap( 'vim-fugitive' )
    nmap <silent> <Leader>ga :Git add %<CR>
    " nmap <silent> <Leader>gr :Gremove<CR>
    nmap <silent> <Leader>gR :Gremove!<CR>
    nmap <silent> <Leader>gc :Gcommit -a<CR>
    nmap <silent> <Leader>gC :Gcommit<CR>
    nmap <silent> <Leader>gd :Gdiff<CR>
    nmap <silent> <Leader>gs :Gstatus<CR>
    " nmap <silent> <Leader>gi :Git svn info<CR>
    nmap <silent> <Leader>gl :Glog<CR>
    nmap <silent> <Leader>gb :Gblame<CR>
    nmap <silent> <Leader>gi :Gsplit! svn info<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text manipulation
"
if dein#tap( 'gundo.vim' )
    nnoremap <Leader>wu :GundoToggle<CR>
    let g:gundo_preview_bottom=1
    let g:gundo_width=30
    let g:gundo_right=1
endif

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
