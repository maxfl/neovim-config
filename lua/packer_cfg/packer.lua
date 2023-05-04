vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{
    opt_default=false,
    max_jobs=8,
    git={
        clone_timeout=180
    }
}

function set_defaults(opts, extra)
    if type(opts)~='table' then
        return
    end

    local default_disable = false

    if opts.disable==nil then
        opts.disable = default_disable
    end

    if extra then
        for k, v in pairs(extra) do
            opts[k]=v
        end
    end
end

function useauto(arg, extra)
    local use=packer.use
    local tbl = nil
    if type(arg)=='string' then
        if arg:match '^packer_cfg%.' then
            tbl = require(arg)
        else
            tbl = {arg}
        end
    else
        tbl = arg
    end

    assert(type(tbl)=='table', 'expect table as configuration')

    for i=1,#tbl do
        set_defaults(tbl[i], extra)
    end
    set_defaults(tbl, extra)

    use(tbl)
end

packer.startup(function()
    local use=packer.use
-- Lua
    do
    -- Packer itself
        use 'wbthomason/packer.nvim'

    -- Colocschemes
        useauto 'packer_cfg.colorscheme'

    -- Tree sitter
        useauto 'packer_cfg.treesitter.treesitter'
        useauto 'packer_cfg.treesitter.treesitter_context'
        useauto 'packer_cfg.treesitter.treesitter_textobjects'
        -- useauto 'packer_cfg.treesitter.treesitter_textsubjects'
        useauto 'packer_cfg.treesitter.treesitter_endwise'
        -- useauto 'packer_cfg.treesitter.treesj'
        -- useauto 'packer_cfg.treesitter.sibling_swap'

    -- LSP
        useauto 'neovim/nvim-lspconfig'
        useauto 'packer_cfg.nvim_lspinstall'

        --useauto {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}, config=function() require 'navigator'.setup() end}
        useauto 'packer_cfg.codeactions'
        useauto 'packer_cfg.symbols_outline'
        useauto 'packer_cfg.diaglist'
        useauto 'packer_cfg.trouble'
        useauto 'packer_cfg.lsp.navbuddy'

    -- Libraries
        useauto 'nvim-lua/plenary.nvim'
        useauto {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}
        useauto 'stevearc/dressing.nvim'

    -- Editing
        useauto 'packer_cfg.edit.comment'
        -- useauto 'packer_cfg.gomove'
        useauto 'packer_cfg.edit.part_edit'

    -- Windows and floats, interface
        useauto {'luukvbaal/stabilize.nvim', config = function() require("stabilize").setup() end, disable=true}
        useauto 'packer_cfg.focus'
        useauto 'packer_cfg.winshift'
        useauto 'packer_cfg.interface.colorful_winsep'

        useauto 'packer_cfg.buffers.bufdelete'
        useauto 'packer_cfg.buffers.close_buffers'
        useauto 'packer_cfg.buffers.early_retirement'

        useauto 'packer_cfg.indent_blankline'

        -- useauto 'packer_cfg.FTerm'
        useauto 'packer_cfg.terminal.toggleterm'
        -- useauto 'packer_cfg.terminal.flatten'

    -- Menus
        useauto 'packer_cfg.telescope'
        -- useauto 'packer_cfg.telescope_rtp'

    -- Keys
        useauto 'packer_cfg.whichkey'

    -- Motion
        useauto 'packer_cfg.hop'

    -- Snippets
        useauto 'packer_cfg.pears'
        -- useauto 'packer_cfg.tabout'
        -- useauto 'packer_cfg.luasnip'

    -- Highlight
        -- useauto 'yamatsum/nvim-cursorline'
        useauto 'packer_cfg.cursorword'
        -- useauto 'packer_cfg.beacon'
        useauto 'packer_cfg.specs' -- hightlight cursor jump
        -- useauto 'packer_cfg.shade'
        -- useauto 'packer_cfg.illuminate' -- vim

    -- Search and replace
        useauto 'packer_cfg.nvim_spectre'

    -- Clipboard
        useauto 'machakann/vim-highlightedyank'
        -- useauto 'packer_cfg.neoclip'
        useauto 'packer_cfg.nvim_miniyank'

    -- VCS and Project
        useauto {'lewis6991/gitsigns.nvim', config=function() require('gitsigns').setup() end, requires='nvim-lua/plenary.nvim'}
        useauto 'packer_cfg.project'
        useauto 'packer_cfg.nvim_config_local'
        useauto 'packer_cfg.lazygit'

    -- Statusline
        -- useauto 'packer_cfg.windline'
        useauto 'packer_cfg.lualine'

    -- Filetype and code
        -- lua
        useauto {'rafcamlet/nvim-luapad', cmd = 'Luapad'}
        -- useauto 'packer_cfg.lua_dev'
        -- useauto 'packer_cfg.nlua'
        useauto 'packer_cfg.glow'
        useauto 'packer_cfg.filetype.edit_markdown_table'
        useauto 'packer_cfg.filetype.nvim_hl_mdcodeblock'
        -- useauto 'packer_cfg.code.coverage'

        -- terminal
        useauto {'norcalli/nvim-terminal.lua', config=function() require 'terminal'.setup() end, ft='terminal'}

        -- tex
        -- useauto 'packer_cfg.nabla'

    -- Files and folders
        useauto {'jghauser/mkdir.nvim', config = function() require('mkdir') end}
        useauto 'packer_cfg.nvim_tree'
        -- useauto 'packer_cfg.firenvim'

    -- Tools
        useauto 'packer_cfg.zk'

    -- Completion
        -- useauto 'packer_cfg.nvim_cmp'
        useauto ('packer_cfg.coq_nvim', {disable=false})

-- Vimscript
    -- Libraries
        useauto 'tpope/vim-repeat'
        useauto 'inkarkat/vim-visualrepeat'

    -- Indentation, encoding, settings
        useauto {'thiagoalessio/rainbow_levels.vim', cmd = 'RainbowLevelsToggle'}
        useauto {'kien/rainbow_parentheses.vim', cmd = 'RainbowParenthesesToggle'}
        useauto {'ciaranm/detectindent', ft='python', config=function() vim.cmd[[au FileType cpp,python :DetectIndent]] end}
        useauto 'packer_cfg.autofenc'
        useauto 'packer_cfg.xkbswitch'

    -- Editing
        -- useauto 'packer_cfg.vim_trailing_whitespace'
        useauto 'packer_cfg.vim_better_whitespace'
        useauto 'packer_cfg.vim_visual_multi'
        useauto 'kopischke/vim-fetch' -- jump to file:line:number
        useauto 'packer_cfg.mundo'
        useauto 'packer_cfg.textmanip'
        useauto {'glts/vim-radical', requires='glts/vim-magnum'} -- convert numbers

    -- Characters and unicode
        useauto 'chrisbra/unicode.vim'
        useauto {'Konfekt/vim-unicode-homoglyphs', setup=function() vim.g.is_homoglyph_on=false end} -- search for hidden unicode characters

    -- Windows and buffers
        useauto 'packer_cfg.choosewin'
        useauto 'packer_cfg.winteract'
        -- useauto 'packer_cfg.bufmru'
        useauto 'packer_cfg.org.ctrlspace'

    -- Motion
        useauto {'inkarkat/vim-JumpToVerticalBlock', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        useauto {'inkarkat/vim-JumpToVerticalOccurrence', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        useauto 'packer_cfg.EnhancedJumps'
        useauto 'tmhedberg/indent-motion'
        -- useauto 'packer_cfg.easymotion'
        useauto 'packer_cfg.cleverf'
        useauto 'packer_cfg.camelcase'

    -- Text objects
        useauto 'packer_cfg.vim_textobj'
        useauto 'packer_cfg.vim_cycle'
        useauto 'packer_cfg.vim_sandwich'
		useauto 'packer_cfg.matchup'

    -- Clipboard
        useauto {'inkarkat/vim-UnconditionalPaste', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat'} }
        useauto {'inkarkat/vim-ReplaceWithRegister', requires={'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        useauto {'inkarkat/vim-RepeatableYank', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        useauto {'inkarkat/vim-SwapText', requires={'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'} }

    -- Menus
        useauto 'packer_cfg.wilder' -- breaks highlighting

    -- Search and replace
        useauto {'tpope/vim-abolish', cmd = 'S'} -- :%S////
        useauto {'vim-scripts/ExplainPattern', cmd = 'ExplainPattern'}
        useauto 'packer_cfg.quickhl'
        useauto 'packer_cfg.searchhi'
        useauto 'packer_cfg.vim_esearch' -- \ff

    -- Diff tools
        -- useauto 'packer_cfg.diff.dirdiff'
        useauto 'packer_cfg.diff.dirdifftree'
        useauto 'packer_cfg.diff.linediff'
        useauto {'rickhowe/diffchar.vim', cond='vim.o.diff'}
        useauto {'rickhowe/spotdiff.vim', cond='vim.o.diff'} -- , cmd = {'Diffthis', 'Diffoff', 'Diffupdate'}}
        -- useauto {'sindrets/diffview.nvim', cmd = 'Diffview*'}
        useauto {'gangleri/vim-diffsaved', cmd = 'ToggleDiffSaved'}
        useauto {'chrisbra/vim-diff-enhanced', cmd = 'EnhancedDiff'}

    -- Filetype and code
        -- tex
        useauto {'KeitaNakamura/tex-conceal.vim', ft={'tex', 'plaintex'}}
        useauto 'packer_cfg.filetype.vimtex'

        -- julia
        useauto 'JuliaEditorSupport/julia-vim'
        useauto {'thinca/vim-prettyprint', cmd = {'PrettyPrint', 'PP'}}

        -- python
        useauto {'kalekundert/vim-coiled-snake', setup=function() vim.g.coiled_snake_set_foldexpr=false end}
        useauto 'alfredodeza/coveragepy.vim'

        -- others
        -- useauto {'georgewitteman/vim-fish'}
        useauto {'ferreum/vim-fish'}
        useauto {'vim-scripts/ebnf.vim'} -- grammar
        useauto {'plasticboy/vim-markdown'}
        useauto {'raivivek/vim-snakemake'}

    -- Spelling and grammar
        useauto {'rhysd/vim-grammarous', cmd = {'GrammarousCheck', 'Grammarous*'}, config=function() vim.g['grammarous#languagetool_cmd']='languagetool' end}

    -- Terminal
        useauto 'packer_cfg.terminal.neoterm'

    -- Snippets
        useauto 'packer_cfg.ultisnips'

    -- Files and folders
        useauto 'packer_cfg.mirror'
        useauto 'packer_cfg.commands.rename'
        useauto 'packer_cfg.suda'
        useauto 'ervandew/archive'
        useauto 'packer_cfg.pushd'
        -- useauto 'packer_cfg.distant'

        useauto {'https://gitlab.com/neonunux/vim-open-or-create-path-and-file.git', cmd = 'OpenOrCreateFile'}

        useauto 'packer_cfg.vim_fswitch'
        useauto 'packer_cfg.rnvimr'
        useauto 'packer_cfg.vim_external'
        useauto 'packer_cfg.direnv'

    -- VCS
        useauto {'inkarkat/vim-ConflictDetection', requires='inkarkat/vim-ingo-library'}
        useauto 'packer_cfg.conflictmotions'
        useauto 'packer_cfg.fugitive'
        -- useauto 'packer_cfg.vim_gista'

    -- Tables and lists
        useauto 'packer_cfg.bullets'
        useauto 'packer_cfg.vim_table_mode'
        useauto 'packer_cfg.vim_easy_align'
        useauto 'packer_cfg.vim_transpose'
        useauto {'inkarkat/vim-AdvancedSorters', cmd = 'SortVisible'}
        useauto 'packer_cfg.code.vim_argwrap'

    -- Documentation
        useauto 'packer_cfg.zeavim'
        useauto 'packer_cfg.devdocs'

    -- Local plugins
        useauto {'~/.config/nvim/bundle_local/txt-vim-syntax-1.2', ft='txt'}
        useauto {'~/.config/nvim/bundle_local/txtfmt_v3.1', ft='txt'}
    end
end)
