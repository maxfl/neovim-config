        useauto 'neovim/nvim-lspconfig'
        useauto {'ncm2/flota-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}
        useauto 'stevearc/dressing.nvim'
        sueauto 'machakann/vim-highlightedyank'
        useauto {'lewis6991/gitsigns.nvim', config=function() require('gitsigns').setup() end, requires='nvim-lua/plenary.nvim'}
        useauto {'rafcamlet/nvim-luapad', cmd = 'Luapad'}
        useauto {'norcalli/nvim-terminal.lua', config=function() require 'terminal'.setup() end, ft='terminal'}
        useauto {'jghauser/mkdir.nvim', config = function() require('mkdir') end}
        useauto 'tpope/vim-repeat'
        useauto {'ciaranm/detectindent', ft='python', setup=function() vim.g.detectindent_preferred_expandtab=true end, config=function() vim.cmd[[au FileType cpp,python :DetectIndent]] end}
        useauto 'kopischke/vim-fetch' -- jump to file:line:number
        useauto {'glts/vim-radical', requires='glts/vim-magnum'} -- convert numbers
        useauto 'chrisbra/unicode.vim'
        useauto {'Konfekt/vim-unicode-homoglyphs', setup=function() vim.g.is_homoglyph_on=false end} -- search for hidden unicode characters
        useauto 'tmhedberg/indent-motion'
        useauto {'tpope/vim-abolish', cmd = 'S'} -- :%S////
        useauto {'vim-scripts/ExplainPattern', cmd = 'ExplainPattern'}
        useauto {'rickhowe/diffchar.vim', cond='vim.o.diff'}
        useauto {'rickhowe/spotdiff.vim', cond='vim.o.diff'} -- , cmd = {'Diffthis', 'Diffoff', 'Diffupdate'}}
        useauto {'gangleri/vim-diffsaved', cmd = 'ToggleDiffSaved'}
        useauto {'chrisbra/vim-diff-enhanced', cmd = 'EnhancedDiff'}
        useauto {'KeitaNakamura/tex-conceal.vim', ft={'tex', 'plaintex'}}
        useauto 'JuliaEditorSupport/julia-vim'
        useauto {'thinca/vim-prettyprint', cmd = {'PrettyPrint', 'PP'}}
        useauto 'alfredodeza/coveragepy.vim'
        useauto {'ferreum/vim-fish'}
        useauto {'vim-scripts/ebnf.vim'} -- grammar
        useauto {'plasticboy/vim-markdown'}
        useauto {'raivivek/vim-snakemake'}
        useauto {'rhysd/vim-grammarous', cmd = {'GrammarousCheck', 'Grammarous*'}, config=function() vim.g['grammarous#languagetool_cmd']='languagetool' end}
        useauto 'ervandew/archive'
        useauto {'https://gitlab.com/neonunux/vim-open-or-create-path-and-file.git', cmd = 'OpenOrCreateFile'}
        useauto 'inkarkat/vim-visualrepeat'
        useauto {'inkarkat/vim-JumpToVerticalBlock', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        useauto {'inkarkat/vim-JumpToVerticalOccurrence', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        useauto {'inkarkat/vim-UnconditionalPaste', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat'} }
        useauto {'inkarkat/vim-ReplaceWithRegister', requires={'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        useauto {'inkarkat/vim-RepeatableYank', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        useauto {'inkarkat/vim-SwapText', requires={'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'} }
        useauto {'inkarkat/vim-ConflictDetection', requires='inkarkat/vim-ingo-library'}
        useauto {'inkarkat/vim-AdvancedSorters', cmd = 'SortVisible'}
        useauto {'~/.config/nvim/bundle_local/txt-vim-syntax-1.2', ft='txt'}
        useauto {'~/.config/nvim/bundle_local/txtfmt_v3.1', ft='txt'}
