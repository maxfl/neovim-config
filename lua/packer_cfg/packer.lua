vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

function update_colocscheme()
    vim.cmd[[
        hi LineNr ctermbg=darkgray guibg=black
        hi FoldColumn ctermbg=darkgray guibg=black
        hi SignColumn ctermbg=darkgray guibg=black
        hi SpellBad cterm=underline
        hi Pmenu guibg=#808080
    ]]
end

packer.init{opt_default=false}
packer.startup(function()
-- Lua
    do
    -- Tree sitter
        use {'nvim-treesitter/nvim-treesitter', config=require'packer_cfg.nvim_treesitter', run=function() vim.cmd ":TSUpdate" end}
        use {'romgrk/nvim-treesitter-context', requires='nvim-treesitter/nvim-treesitter'}

    -- LSP
        use {'neovim/nvim-lspconfig'}
        use {'anott03/nvim-lspinstall', config=require'packer_cfg.nvim_lspconfig'}

        --use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}, config=function() require'navigator'.setup() end}

    -- Libraries
        use {'nvim-telescope/telescope.nvim', requires='nvim-lua/plenary.nvim'}
        use {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}

    -- Interface
        use (require 'packer_cfg.shade')

    -- Highlight
        -- use 'yamatsum/nvim-cursorline'

    -- Colocschemes
        use {'jonathanfilip/vim-lucius', config=function() vim.cmd[[colorscheme lucius | LuciusBlack]]; update_colocscheme() end}

    -- Clipboard
        use 'machakann/vim-highlightedyank'

    -- VCS
        use {'lewis6991/gitsigns.nvim', config=function() require('gitsigns').setup() end, requires='nvim-lua/plenary.nvim'}

    -- Statusline
        use {'windwp/windline.nvim', config=function() require('wlsample.airline') end, requires='lewis6991/gitsigns.nvim' }

    -- Filetype
        -- lua
        use {'rafcamlet/nvim-luapad', opt=true, cmd='Luapad'}

    -- Completion
        use (require'packer_cfg.nvim_cmp')

-- Vimscript
    -- Libraries
        --use {'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}
        --use {'inkarkat/vim-SyntaxRange', requires='inkarkat/vim-ingo-library'}
        use 'tpope/vim-repeat'
        use 'inkarkat/vim-visualrepeat'

    -- Indentation
        use {'thiagoalessio/rainbow_levels.vim', opt=true, cmd='RainbowLevelsToggle'}
        use {'kien/rainbow_parentheses.vim',     opt=true, cmd='RainbowParenthesesToggle'}
        use {'Yggdroot/indentLine',              opt=true, cmd={'IndentLinesEnable', 'IndentLinesToggle'},
        config=function()
            vim.g.indentLine_enabled=0
            vim.cmd[[au FileType cpp,python :IndentLinesEnable]]
        end}
        use {'nathanaelkane/vim-indent-guides',  opt=true, cmd={'IndentGuidesEnable', 'IndentGuidesToggle'}}

    -- Motion
        use {'inkarkat/vim-JumpToVerticalBlock', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        use {'inkarkat/vim-JumpToVerticalOccurrence', requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}}
        use {'inkarkat/vim-EnhancedJumps', config=require'packer_cfg.EnhancedJumps', requires='inkarkat/vim-ingo-library'}

    -- Clipboard
        use {'inkarkat/vim-UnconditionalPaste', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat'} }
        use {'inkarkat/vim-ReplaceWithRegister', requires={'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }
        use {'inkarkat/vim-RepeatableYank', requires={'inkarkat/vim-ingo-library', 'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'} }

    -- Menus
        use (require 'packer_cfg.quickui')

    -- Search and replace
        use 'tpope/vim-abolish' -- :%S////

    -- Diff tools
        use {'will133/vim-dirdiff', opt=true, config=require'packer_cfg.dirdiff', cmd='DirDiff'}

    -- Filetype
        -- tex
        use {'KeitaNakamura/tex-conceal.vim', opt=true, ft={'tex', 'plaintex'}}
        use {'lervag/vimtex', config=require'packer_cfg.vimtex', opt=true, ft={'tex', 'plaintex'}}

        -- julia
        --use {'JuliaEditorSupport/julia-vim', opt=true, ft='julia'}

    -- Snippets
        use {'SirVer/ultisnips', requires='honza/vim-snippets', config=function()
            vim.g.UltiSnipsExpandTrigger='<Tab>'
            vim.g.UltiSnipsJumpForwardTrigger='<Tab>'
            vim.g.UltiSnipsJumpBackwardTrigger='<S-Tab>'
        end}
        use (require'packer_cfg.auto_pairs')
        use 'tpope/vim-endwise'

    -- Files and folders
        use {'zenbro/mirror.vim', opt=true, cmd={'MirrorConfig', 'MirrorPush', 'MirrorPull'},
        config=function()
            local map = vim.api.nvim_set_keymap
            map('n', '<Leader>rc', ':MirrorPush<CR>', {})
            map('n', '<Leader>rp', ':MirrorPull<CR>', {})
        end}

    -- VCS
        use {'inkarkat/vim-ConflictDetection', requires='inkarkat/vim-ingo-library'}
        use {'inkarkat/vim-ConflictMotions', config=function() vim.g.ConflictMotions_TakeMappingPrefix="<Leader>=" end, requires={{'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}, 'tpope/vim-repeat', 'inkarkat/vim-visualrepeat'}}
        use {'tpope/vim-fugitive', config=require'packer_cfg.fugitive'}

    -- Tables and lists
        use {'dkarter/bullets.vim', setup=function() vim.g.bullets_enabled_file_types={'markdown', 'rst', 'text', 'txt', 'gitcommit'} end, opt=true, ft={'markdown', 'rst', 'text', 'txt', 'gitcommit'}}
        use 'inkarkat/vim-AdvancedSorters'

        -- Local plugins
        use {"~/.config/nvim/bundle_local/SwapText-1.02", requires={'inkarkat/vim-CountJump', requires='inkarkat/vim-ingo-library'}}
        use {'~/.config/nvim/bundle_local/txt-vim-syntax-1.2', opt=true, ft='txt'}
        use {'~/.config/nvim/bundle_local/txtfmt_v3.1', opt=true, ft='txt'}
    end
end)


        --[[
        -- Outdated
        -- Colorschemes
        use {'mhartington/oceanic-next', config=function() vim.cmd"colorscheme OceanicNext" end}

        -- Menus
        call dein#add('sudormrfbin/cheatsheet.nvim.git', { 'depends': 'telescope' })

        -- Filetype
        -- Markdown
        call dein#add('previm/previm', { 'hook_add': "
        \ let g:previm_open_cmd = \"bash -c 'qutebrowser --target window $* &' -- \"\n
        \ "})
        -- Other
        'Shougo/neossh.vim'
        "call dein#add('pechorin/any-jump.vim', { 'normalized_name': 'any-jump' }) " Warning: not used
        call dein#add('lervag/wiki.vim', { 'hook_add': "let g:wiki_mappings_use_defaults=0" })
        call dein#add('lervag/wiki-ft.vim', { 'depends': 'wiki'})
        "call dein#add('brooth/far.vim')        " :Far
        call dein#add('vim-scripts/RangeMacro') " karkat
        call dein#add('inkarkat/vim-ExtractMatches', { 'normalized_name': 'ExtractMatches',  'depends': 'ingo-library' })
        call dein#add('rbong/vim-buffest')      " edit register
        --]]
