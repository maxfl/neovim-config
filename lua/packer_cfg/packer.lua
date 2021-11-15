vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{opt_default=false}
packer.startup(function()
    local use=packer.use
-- Lua
    do
    -- Packer itself
        use 'wbthomason/packer.nvim'

    -- Colocschemes
        use (require 'packer_cfg.colorscheme')

    -- Tree sitter
        use (require 'packer_cfg.nvim_treesitter')
        use {'romgrk/nvim-treesitter-context', requires='nvim-treesitter/nvim-treesitter'}
        use (require 'packer_cfg.nvim_treesitter_textobjects')
        -- use (require 'packer_cfg.nvim_treesitter_textsubjects')

    -- LSP
        use 'neovim/nvim-lspconfig'
        use (require 'packer_cfg.nvim_lspinstall')
        --use (require 'packer_cfg.trouble')

        --use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}, config=function() require 'navigator'.setup() end}

    -- Libraries
        use 'nvim-lua/plenary.nvim'
        use {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}
        use (require 'packer_cfg.telescope')

    -- Editing
        use (require 'packer_cfg.comment')
        use (require 'packer_cfg.indent_blankline')

    -- Windows and floats
        --use (require 'packer_cfg.winshift')
        use (require 'packer_cfg.FTerm')
        use {'luukvbaal/stabilize.nvim', config = function() require("stabilize").setup() end, disable=true}
        use (require 'packer_cfg.bufdelete')

    -- Motion
        use (require 'packer_cfg.hop')

    -- Snippets
        use (require 'packer_cfg.nvim_autopairs')

    -- Highlight
        -- use 'yamatsum/nvim-cursorline'
        -- use (require 'packer_cfg.beacon')
        use (require 'packer_cfg.specs') -- hightlight cursor jump
        use (require 'packer_cfg.shade')

    -- Clipboard
        use 'machakann/vim-highlightedyank'
        -- use (require 'packer_cfg.neoclip')
        use (require 'packer_cfg.nvim_miniyank')

    -- VCS
        use {'lewis6991/gitsigns.nvim', config=function() require('gitsigns').setup() end, requires='nvim-lua/plenary.nvim'}

    -- Statusline
        use {'windwp/windline.nvim', config=function() require('wlsample.airline') end, requires='lewis6991/gitsigns.nvim' }

    -- Filetype
        -- lua
        use {'rafcamlet/nvim-luapad', opt=true, cmd='Luapad'}
        use (require 'packer_cfg.lua_dev')

        -- terminal
        use {'norcalli/nvim-terminal.lua', config=function() require 'terminal'.setup() end, opt=true, ft='terminal'}

    -- Files and folders
        use {'jghauser/mkdir.nvim', config = function() require('mkdir') end}

    -- Completion
        use (require 'packer_cfg.nvim_cmp')

-- Vimscript
    -- Libraries
        use 'tpope/vim-repeat'
        use 'inkarkat/vim-visualrepeat'

    -- Interface
        use 'vim-scripts/RelativeNumberCurrentWindow'

    -- Indentation
        use {'thiagoalessio/rainbow_levels.vim', opt=true, cmd='RainbowLevelsToggle'}
        use {'kien/rainbow_parentheses.vim',     opt=true, cmd='RainbowParenthesesToggle'}
        use {'ciaranm/detectindent', opt=true, ft='python', config=function() vim.cmd[[au FileType cpp,python :DetectIndent]] end}

    -- Editing
        use (require 'packer_cfg.vim_trailing_whitespace')
        use 'mg979/vim-visual-multi'
        use 'kopischke/vim-fetch' -- jump to file:line:number
        use (require 'packer_cfg.mundo')
        use (require 'packer_cfg.textmanip')

    -- Characters and unicode
        use 'chrisbra/unicode.vim'
        use {'Konfekt/vim-unicode-homoglyphs', setup=function() vim.g.is_homoglyph_on=false end} -- search for hidden unicode characters
        use (require 'packer_cfg.isotope')

    -- Windows
        use (require 'packer_cfg.choosewin')
        use (require 'packer_cfg.winteract')
        use (require 'packer_cfg.suckless')

    -- Motion
        use {'inkarkat/vim-JumpToVerticalBlock', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        use {'inkarkat/vim-JumpToVerticalOccurrence', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        use {'inkarkat/vim-EnhancedJumps', config=require 'packer_cfg.EnhancedJumps', requires='inkarkat/vim-ingo-library'}
        use 'tmhedberg/indent-motion'
        -- use (require 'packer_cfg.easymotion')
        use (require 'packer_cfg.cleverf')
        use (require 'packer_cfg.camelcase')

    -- Text objects
        use (require 'packer_cfg.vim_textobj')
        use (require 'packer_cfg.vim_cycle')
        use (require 'packer_cfg.vim_sandwich')

	-- Text objects
		use (require 'packer_cfg.matchup')

    -- Clipboard
        use {'inkarkat/vim-UnconditionalPaste', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat'} }
        use {'inkarkat/vim-ReplaceWithRegister', requires={'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        use {'inkarkat/vim-RepeatableYank', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }

    -- Menus
        use (require 'packer_cfg.ctrlspace')
        -- use (require 'packer_cfg.wilder')

    -- Search and replace
        use {'tpope/vim-abolish', opt=true, cmd='S'} -- :%S////
        use {'vim-scripts/ExplainPattern', opt=true, cmd='ExplainPattern'}
        use (require 'packer_cfg.quickhl')
        use (require 'packer_cfg.searchhi')
        use (require 'packer_cfg.vim_esearch') -- \ff

    -- Diff tools
        use (require 'packer_cfg.dirdiff')
        use (require 'packer_cfg.linediff')
        use {'rickhowe/diffchar.vim', cond='vim.o.diff'}
        use {'rickhowe/spotdiff.vim', cond='vim.o.diff'} --, opt=true, cmd={'Diffthis', 'Diffoff', 'Diffupdate'}}
        use {'sindrets/diffview.nvim', opt=true, cmd='Diffview*'}
        use {'gangleri/vim-diffsaved', opt=true, cmd='ToggleDiffSaved'}
        use {'chrisbra/vim-diff-enhanced', opt=true, cmd='EnhancedDiff'}

    -- Filetype
        -- tex
        use {'KeitaNakamura/tex-conceal.vim', opt=true, ft={'tex', 'plaintex'}}
        use (require 'packer_cfg.vimtex')

        -- julia
        use 'JuliaEditorSupport/julia-vim'
        use {'thinca/vim-prettyprint', opt=true, cmd={'PrettyPrint', 'PP'}}

        -- others
        use {'georgewitteman/vim-fish', opt=true, fg='fish'}
        use {'vim-scripts/ebnf.vim', opt=true, ft='ebnf'} -- grammar
        use {'plasticboy/vim-markdown', opt=true, ft='markdown'}
        use {'kalekundert/vim-coiled-snake', opt=true, ft='python', setup=function() vim.g.coiled_snake_set_foldexpr=false end}

    -- Spelling and grammar
        use {'rhysd/vim-grammarous', opt=true, cmd='Grammarous*', config=function() vim.g['grammarous#languagetool_cmd']='languagetool' end}

    -- Terminal
        use (require 'packer_cfg.neoterm')

    -- Snippets
        use (require 'packer_cfg.ultisnips')

    -- Files and folders
        use (require 'packer_cfg.mirror')
        use {'vim-scripts/Rename', opt=true, cmd='Rename'}
        use (require 'packer_cfg.sudoedit')
        use 'ervandew/archive'

        use {'https://gitlab.com/neonunux/vim-open-or-create-path-and-file.git', opt=true, cmd='OpenOrCreateFile'}

        use (require 'packer_cfg.vim_fswitch')
        use (require 'packer_cfg.rnvimr')
        use (require 'packer_cfg.vim_external')
        use (require 'packer_cfg.direnv')

    -- VCS
        use {'inkarkat/vim-ConflictDetection', requires='inkarkat/vim-ingo-library'}
        use (require 'packer_cfg.conflictmotions')
        use (require 'packer_cfg.fugitive')

    -- Tables and lists
        use (require 'packer_cfg.bullets')
        use (require 'packer_cfg.vim_table_mode')
        use (require 'packer_cfg.vim_easy_align')
        use (require 'packer_cfg.vim_transpose')
        use {'inkarkat/vim-AdvancedSorters', opt=true, cmd='SortVisible'}

    -- Documentation
        use (require 'packer_cfg.zeavim')
        use (require 'packer_cfg.devdocs')

    -- Local plugins
        use {"~/.config/nvim/bundle_local/SwapText-1.02", opt=true, keys={'n', '<Leader>x'}, requires={'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}
        use {'~/.config/nvim/bundle_local/txt-vim-syntax-1.2', opt=true, ft='txt'}
        use {'~/.config/nvim/bundle_local/txtfmt_v3.1', opt=true, ft='txt'}
    end
end)

--[[
        -- Outdated
        -- Colorschemes
        use {'mhartington/oceanic-next', config=function() vim.cmd"colorscheme OceanicNext" end}

        -- Menus
        use('sudormrfbin/cheatsheet.nvim.git', { 'depends': 'telescope' })

        -- Filetype
        -- Markdown
        use('previm/previm', { 'hook_add': "
        \ let g:previm_open_cmd = \"bash -c 'qutebrowser --target window $* &' -- \"\n
        \ "})
        -- Other
        'Shougo/neossh.vim'
        "use('pechorin/any-jump.vim', { 'normalized_name': 'any-jump' }) " Warning: not used
        use('lervag/wiki.vim', { 'hook_add': "let g:wiki_mappings_use_defaults=v:false" })
        use('lervag/wiki-ft.vim', { 'depends': 'wiki'})
        "use('brooth/far.vim')        " :Far
        use('vim-scripts/RangeMacro') " karkat
        use('inkarkat/vim-ExtractMatches', { 'normalized_name': 'ExtractMatches',  'depends': 'ingo-library' })
        use('rbong/vim-buffest')      " edit register

        call dein#add('powerman/vim-plugin-AnsiEsc', { 'normalized_name': 'plugin-AnsiEsc', 'lazy': 1, 'on_cmd': 'AnsiEsc'})

        call dein#add('voldikss/vim-floaterm', { 'normalized_name': 'floaterm',  'on_cmd': 'FloatermToggle', 'hook_add': "
                    \ noremap  <silent> <F12> :FloatermToggle<CR>\n
                    \ noremap! <silent> <F12> <Esc>:FloatermToggle<CR>\n
                    \ tnoremap <silent> <F12> <C-\\><C-n>:FloatermToggle<CR>\n
                    \ let g:floaterm_shell='fish'\n
                    \ "})

        call dein#add('jsfaint/gen_tags.vim', { 'hook_add': "
                    \ let g:loaded_gentags#gtags=v:true
                    \ " })
        call dein#add('majutsushi/tagbar', {
                    \   'hook_add': function("plugin_cfg#tagbar#add"),
                    \   'hook_post_source': function("plugin_cfg#tagbar#post_source")
                    \ })

        'bfrg/vim-cpp-modern'

        call dein#add('joom/latex-unicoder.vim', { 'hook_add': "let g:unicoder_no_map=v:true" })
        call dein#add('ron89/thesaurus_query.vim', {
                    \ 'hook_add': 'let g:tq_map_keys = v:false'
                    \ })
--]]
