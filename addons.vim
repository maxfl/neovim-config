if &shell =~# 'fish$'
    set shell=/bin/bash
endif

set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin( expand('~/.config/nvim/bundle/') )
let g:dein#types#git#clone_depth = 1

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

call dein#add('tpope/vim-sensible')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Libraries
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('inkarkat/vim-ingo-library')
call dein#add('inkarkat/vim-CountJump', {'depends': 'vim-ingo-library' })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface and highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('altercation/vim-colors-solarized', { 'hook_add' : "
            \ colorscheme solarized\n
            \ \" let g:solarized_termcolors=256\n
            \ "})
" fade unfocused buffers
call dein#add('tadaa/vimade', {'depends' : 'vim-colors-solarized', 'hook_add' : "
            \ let g:vimade = {}\n
            \ let g:vimade.fadelevel = 0.2\n
            \ let g:vimade.usecursorhold=1\n
            \ "})
call dein#add('powerman/vim-plugin-AnsiEsc')
call dein#add('bronson/vim-trailing-whitespace', { 'hook_add' : "
            \ nnoremap <Leader>rts :FixWhitespace<CR>\n
            \ autocmd BufWritePre *.py,*.cc,*.hh,*.cxx,*.h,*.cpp,*.vim,vimrc,*.sh,*.fish :silent FixWhitespace\n
            \ " })

call dein#add('vim-airline/vim-airline', { 'depends': 'tagbar', 'hook_add' : "
            \ let g:airline#extensions#wordcount#filetypes='\\vmarkdown|text|txt'\n
            \ let g:airline_detect_iminsert=1\n
            \ let g:airline_powerline_fonts=1\n
            \ let g:airline_theme='solarized'\n
            \ let g:airline_section_y = '%{printf(\"%s%s%s\",(&fenc==\"utf-8\")?\"\":&fenc,(&ff==\"unix\")?\"\":\" [\".&ff.\"]\",&et?\"\":\" [t]\")}'\n
            \ let g:airline_section_z0 = '%-4b %-5(0x%B%)'\n
            \ let g:airline_section_z = '%3P %{g:airline_symbols.linenr} %3l:%3c'\n
            \ let g:airline_mode_map = {
            \     '__' : '-',
            \     'c'  : 'C',
            \     'i'  : 'I',
            \     'ic' : 'I',
            \     'ix' : 'I',
            \     'n'  : 'N',
            \     'ni' : 'N',
            \     'no' : 'N',
            \     'R'  : 'R',
            \     'Rv' : 'R',
            \     's'  : 'S',
            \     'S'  : 'S',
            \     '' : 'S',
            \     't'  : 'T',
            \     'v'  : 'V',
            \     'V'  : 'V',
            \     '' : 'V',
            \ }\n
            \ let g:airline#extensions#default#section_truncate_width = {
            \               'b':  88,
            \               'x':  70,
            \               'z0': 60,
            \               'z':  45,
            \               }\n
            \ let g:airline#extensions#default#layout = [
            \               [ 'a', 'b', 'c' ],
            \               [ 'x', 'y', 'z', 'warning' ]
            \               ]\n
            \ autocmd User VimtexEventInitPost :AirlineRefresh\n
            \ let g:airline#extensions#xkblayout#enabled=0\n
            \ let g:airline#extensions#keymap#enabled=0\n
            \ " })
call dein#add('vim-airline/vim-airline-themes')
call dein#add('paranoida/vim-airlineish')

" FIXME: almost not used
call dein#add('thiagoalessio/rainbow_levels.vim', { 'hook_add' : "nnoremap <Leader>iL :RainbowLevelsToggle<CR>" })
call dein#add('kien/rainbow_parentheses.vim',     { 'hook_add' : "nnoremap <Leader>ip :RainbowParenthesesToggle<CR>" })
call dein#add('Yggdroot/indentLine',              { 'hook_add' : "
            \ let g:indentLine_enabled=0\n
            \ nnoremap <Leader>il :IndentLinesToggle<CR>\n
            \ au FileType cpp,python :IndentLinesEnable\n
            \ " })
call dein#add('nathanaelkane/vim-indent-guides',  { 'hook_add' : "nnoremap <Leader>ig :IndentGuidesToggle<CR>" }) "let g:indent_guides_color_change_percent=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows and splits
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('t9md/vim-choosewin', { 'hook_add': "nmap <leader>-  <Plug>(choosewin)" })
call dein#add('romgrk/winteract.vim', { 'hook_add': "nmap <leader>w :InteractiveWindow<CR>" })
call dein#add('fabi1cazenave/suckless.vim', { 'hook_add': "
            \ let g:suckless_tabline=0\n
            \ nmap <M--> :tabprev<CR>\n
            \ nmap <M-=> :tabnext<CR>\n
            \ nmap <M-+> :tabnew<CR>\n
            \" })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('jiangmiao/auto-pairs', { 'hook_add' : "
            \ let g:AutoPairsFlyMode = 1\n
            \ let g:AutoPairsShortcutToggle=''\n
            \ let g:AutoPairsShortcutJump=''\n
            \ noremap <Leader>( :call AutoPairsToggle()<CR>\n
            \ let g:AutoPairs = {'(':')', '[':']', '{':'}',\"'\":\"'\",'\"':'\"', '`':'`'}\n
            \ call extend( g:AutoPairs, {'“':'”', '‘' : '’', '„':'“', '«':'»'} )\n
            \ " } )
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
call dein#add('inkarkat/vim-JumpToVerticalBlock', {'depends': 'vim-CountJump'})
call dein#add('inkarkat/vim-JumpToVerticalOccurrence', {'depends': 'vim-CountJump'})
call dein#add('inkarkat/vim-EnhancedJumps', {
            \ 'depends': 'vim-ingo-library',
            \ 'hook_add': "
            \ nmap <Leader><C-O> <Plug>EnhancedJumpsOlder\n
            \ nmap <Leader><C-I> <Plug>EnhancedJumpsNewer\n
            \ nmap <C-O>         <Plug>EnhancedJumpsLocalOlder\n
            \ nmap <C-I>         <Plug>EnhancedJumpsLocalNewer\n
            \ nmap <M-p>         <Plug>EnhancedJumpsRemoteOlder\n
            \ nmap <M-S-p>       <Plug>EnhancedJumpsRemoteNewer\n
            \ let g:EnhancedJumps_CaptureJumpMessages = 0\n
            \ "
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap  x   "_x
vnoremap x   "_x
noremap  d   "_d
vnoremap d   "_d
nnoremap dd "_dd
noremap  m     d
vnoremap m     d
nnoremap mm   dd

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
call dein#add('vim-scripts/ReplaceWithRegister')
call dein#add('inkarkat/vim-UnconditionalPaste', {
            \ 'depends': ['vim-ingo-library', 'vim-repeat']
            \ })

" overridden by miniyank

"    Outdated
"    call dein#add('svermeulen/vim-easyclip', { 'hook_add' : "
"                \ let g:EasyClipEnableBlackHoleRedirectForChangeOperator=0\n
"                \ noremap gx x\n
"                \ noremap gX X\n
"                \ noremap gm m\n
"                \
"                \ let bindings =
"                \   [
"                \     ['gr',  '<plug>SubstituteOverMotionMap',  'n',  1],
"                \     ['grr',  '<plug>SubstituteLine',  'n',  1],
"                \     ['gr',  '<plug>XEasyClipPaste',  'x',  1],
"                \     ['gR',  '<plug>SubstituteToEndOfLine',  'n',  1],
"                \   ]\n
"                \ for binding in bindings\n
"                \     call call('EasyClip#AddWeakMapping', binding)\n
"                \ endfor\n
"                \ " })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('dkarter/bullets.vim', { 'hook_add' : "
            \ let g:bullets_enabled_file_types=['markdown', 'rst', 'text', 'txt', 'gitcommit']\n
            \ " })
call dein#add('sjl/gundo.vim', { 'hook_add' : "
            \ nnoremap <Leader>wu :GundoToggle<CR>\n
            \ let g:gundo_preview_bottom=1\n
            \ let g:gundo_width=30\n
            \ let g:gundo_right=1\n
            \ " })

let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 2
call dein#add('tpope/vim-repeat')
call dein#add("vim-scripts/visualrepeat")
call dein#add('vim-scripts/ChangeGlobally') "karkat FIXME: not used
call dein#add('Shougo/deoplete.nvim', { 'hook_add' : "
            \ call deoplete#custom#option('auto_refresh_delay', 200)\n
            \ inoremap <expr><C-X><C-X> deoplete#manual_complete() \n
            \ "})
call dein#add('terryma/vim-multiple-cursors', { 'hook_add' : "
            \ let g:multi_cursor_start_key='<C-n>'\n
            \ let g:multi_cursor_quit_key='<C-z>'\n
            \ \"let g:multi_cursor_exit_from_insert_mode=1\n
            \ \"let g:multi_cursor_exit_from_visual_mode=1\n
            \
            \ function! Multiple_cursors_before()\n
            \     nunmap <F2>\n
            \     if dein#tap('deoplete.nvim')\n
            \         call deoplete#custom#buffer_option('auto_complete', v:false)\n
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
            \     nnoremap <F2> :w<CR>\n
            \     if dein#tap('deoplete.nvim')\n
            \         call deoplete#custom#buffer_option('auto_complete', v:true)\n
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilites
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('kana/vim-submode', {'hook_add' : "
            \ call submode#enter_with('textmanip', 'x', '', '<Leader>mm')\n
            \ call submode#leave_with('textmanip', 'xn', '', '<Esc>')\n
            \ call submode#map(       'textmanip', 'x', '', '>', '>>')\n
            \ call submode#map(       'textmanip', 'x', '', '<', '<<')\n
            \ "})
call dein#add('vim-scripts/RelativeNumberCurrentWindow')
call dein#add('vim-scripts/RangeMacro')
call dein#add('wgurecky/vimSum')
"call dein#add('Floobits/floobits-neovim')

call dein#add('moll/vim-bbye', { 'hook_add' : "
            \ nnoremap ZQ :Bdelete<CR>\n
            \ nnoremap ZZ :write<CR>:Bdelete<CR>\n
            \ nnoremap <Leader>ZZ ZZ\n
            \ nnoremap <Leader>ZQ ZQ\n
            \ " })
call dein#add('rbgrouleff/bclose.vim') " same as bbye, required by ranger
call dein#add('nhooyr/neoman.vim')
call dein#add('chrisbra/unicode.vim')
call dein#add('thinca/vim-prettyprint')
call dein#add('romgrk/pp.vim')
call dein#add('ciaranm/detectindent', {'hook_add' : "
      \ au FileType cpp,python :DetectIndent
      \ "})
call dein#add('tpope/vim-fugitive', { 'hook_add' : "
            \ nmap <silent> <Leader>ga :!git add %<CR>\n
            \ nmap <silent> <Leader>gR :Gremove!<CR>\n
            \ nmap <silent> <Leader>gc :Gcommit -a<CR>\n
            \ nmap <silent> <Leader>gA :Gcommit -a --amend<CR>\n
            \ nmap <silent> <Leader>gC :Gcommit<CR>\n
            \ nmap <silent> <Leader>gp :Gpush<CR>\n
            \ nmap <silent> <Leader>gP :Gpull<CR>\n
            \ nmap <silent> <Leader>gd :Gdiff<CR>\n
            \ nmap <silent> <Leader>gs :Gstatus<CR>\n
            \ nmap <silent> <Leader>gl :Glog<CR>\n
            \ nmap <silent> <Leader>gb :Gblame<CR>\n
            \ nmap <silent> <Leader>gi :Gsplit! svn info<CR>\n
            \ " })
call dein#add('idanarye/vim-merginal')
"call dein#add('lyokha/vim-xkbswitch', { 'hook_add' : "
            "\ let g:XkbSwitchEnabled = 1\n
            "\ let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so'\n
            "\ let g:XkbSwitchILayout = 'us'\n
            "\ let g:XkbSwitchNLayout = 'us'\n
            "\  })
call dein#add('kabbamine/zeavim.vim')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Textobjects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('andymass/vim-matchup')
function! ConfigureSandwich()
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
                \   {'buns': ["``", "``"],               'nesting': 0, 'input': [ "2`" ],  'filetype': ['rst'] },
                \   {'buns': ["'''", "'''"],             'nesting': 0, 'input': [ "3'" ],  'filetype': ['python'] },
                \   {'buns': ['"""', '"""'],             'nesting': 0, 'input': [ '3"' ],  'filetype': ['python'] },
                \   {'buns': ['[(', ')]'],               'nesting': 1, 'input': [ '2[' ],  'filetype': ['python'] },
                \   {'buns': ['([', '])'],               'nesting': 1, 'input': [ '2(' ],  'filetype': ['python'] },
                \ ]
    let g:sandwich#recipes += [
                \   {'buns': ["`", "'"],                 'nesting': 1, 'input': [ "l'", "l`" ], 'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ["``", "''"],               'nesting': 1, 'input': [ 'l"' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['"`', "\"'"],              'nesting': 1, 'input': [ 'L"' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': [",,", "``"],               'nesting': 1, 'input': [ 'l,' ],       'filetype': ['tex', 'plaintex', 'rst'], },
                \	{'buns': ['<<', '>>'],               'nesting': 1, 'input': [ 'l<' ],       'filetype': ['tex', 'plaintex', 'rst'] },
                \	{'buns': ['\{', '\}'],               'nesting': 1, 'input': [ '\{' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\[', '\]'],               'nesting': 1, 'input': [ '\[' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
                \	{'buns': ['\(', '\)'],               'nesting': 1, 'input': [ '\(' ],       'filetype': ['tex', 'plaintex', 'rst'], 'indentkeys-' : '{,},0{,0}' },
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
endfunction
call dein#add('machakann/vim-sandwich', { 'hook_add' : "call ConfigureSandwich()" })

call dein#add('kana/vim-textobj-user', { 'hook_add' : "
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
            \       { '\\C\\<yes\\>': 'no', '\\C\\<no\\>':  'yes',  }, { '\\C\\<Yes\\>': 'No', '\\C\\<No\\>':  'Yes',  }, { '\\C\\<YES\\>': 'NO', '\\C\\<NO\\>':  'YES',  },
            \       { '\\C\\<on\\>': 'off', '\\C\\<off\\>':  'on',  }, { '\\C\\<On\\>': 'Off', '\\C\\<Off\\>':  'On',  }, { '\\C\\<ON\\>': 'OFF', '\\C\\<OFF\\>':  'ON',  },
            \       { '\\C\\<AND\\>': 'OR', '\\C\\<OR\\>':  'AND',  }, { '\\C\\<and\\>': 'or', '\\C\\<or\\>':  'and',  },
            \       [ '[ ]', '[✔]', '[✘]', '[✔✘]', '[?]' ],
            \     ]\n
            \ autocmd FileType gitrebase let b:switch_custom_definitions = [
            \       [ 'pick', 'reword', 'edit', 'squash', 'fixup', 'exec' ]
            \     ]\n
            \ autocmd FileType tex,plaintex let b:switch_custom_definitions = [
            \         [ '\\\\tiny', '\\\\scriptsize', '\\\\footnotesize', '\\\\small', '\\\\normalsize', '\\\\large', '\\\\Large', '\\\\LARGE', '\\\\huge', '\\\\Huge' ],
            \         [ '\\\\displaystyle', '\\\\scriptstyle', '\\\\scriptscriptstyle', '\\\\textstyle' ],
            \         [ '\\\\part', '\\\\chapter', '\\\\section', '\\\\subsection', '\\\\subsubsection', '\\\\paragraph', '\\\\subparagraph' ],
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
call dein#add('lervag/wiki.vim')
call dein#add('lervag/wiki-ft.vim', { 'depends' : 'wiki.vim'})
call dein#add('joom/latex-unicoder.vim', { 'hook_add' : "let g:unicoder_no_map=1" })
call dein#add('dag/vim-fish')
"call dein#add('Rykka/riv.vim', { 'hook_add' : "let g:riv_ignored_imaps = '<Tab>,<S-Tab>'" })
call dein#add('plasticboy/vim-markdown')
call dein#add('JuliaEditorSupport/julia-vim')
call dein#add('bfrg/vim-cpp-modern')

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

"" Deprecate deniteunite and co?
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/denite.nvim', { 'depends': 'neomru.vim', 'hook_add' : "
            "\ nnoremap <Leader>lb :<C-u>Denite buffer file_mru<CR>\n
            "\ nnoremap <Leader>lf :<C-u>DeniteBufferDir file<CR>\n
            "\ nnoremap <Leader>ln :<C-u>exe \"DeniteBufferDir -input=\".expand(\"<cfile>\").\" file:new file\"<CR>\n
            "\ nnoremap <Leader>lO :<C-u>Denite -ignorecase outline<CR>\n
            "\ nnoremap <Leader>lF :<C-u>DeniteBufferDir file_rec<CR>\n
            "\ nnoremap <Leader>ld :<C-u>Denite file_rec<CR>
            "\ "})
"call dein#add('Shougo/unite.vim') "FIXME: deprecate

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
call dein#add('vim-scripts/VOoM', { 'hook_add' : "
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
            \ 'depends' : 'bclose.vim'
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
"call dein#add('tpope/vim-dispatch', { 'hook_add' : "
            "\ nnoremap <Leader>qm :Make<CR>\n
            "\ nnoremap <Leader>qM :Make!<CR>\n
            "\ nnoremap <Leader>qc :Copen<CR>\n
            "\ nnoremap <Leader>qC :Copen!<CR>\n
            "\ " })

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal and repl

"call dein#add('ivanov/vim-ipython', { 'hook_add' : "let g:ipy_perform_mappings=0" })
"call dein#add('Vigemus/iron.nvim')                         " deprecated
"call dein#add('bfredl/nvim-ipy', {'hook_add' : "           " deprecated
            "\ let g:nvim_ipy_perform_mappings=1\n
            "\ map <Leader>ii <Plug>(IPy-Run)\n
            "\ map <Leader>ic <Plug>(IPy-RunCell)\n
            "\ map <Leader>ia <Plug>(IPy-RunAll)\n
            "\ map <Leader>is <Plug>(IPy-Interrupt)\n
            "\ map <Leader>it <Plug>(IPy-Terminate)\n
            "\ "})
call dein#add('kassio/neoterm', { 'hook_add' : "
            \ let g:neoterm_shell = '/usr/bin/fish'\n
            \ let g:neoterm_automap_keys = '<Leader>qm'\n
            \ nmap <M-t> :Tnew<CR>\n
            \ nmap <M-T> :Tnew<CR>i\n
            \ " })
" call dein#add('williamjameshandley/vimteractive') " not working with neovim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local bundles
call dein#local("~/.config/nvim/bundle_local", { 'depends': 'CountJump' })

call dein#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit (included in default scripts)
au FileType text,txt let b:match_words="“:”,‘:’,«:»,„:“"

let g:ConflictMotions_TakeMappingPrefix = '<Leader>='
