vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{opt_default=false}
packer.startup(function()
    -- Lua
        -- Tree sitter
            use {'nvim-treesitter/nvim-treesitter', config=require'packer_cfg.nvim_treesitter'}
            use {'romgrk/nvim-treesitter-context', requires='nvim-treesitter/nvim-treesitter'}

        -- LSP
            use {'neovim/nvim-lspconfig'}
            use {'anott03/nvim-lspinstall', config=require'packer_cfg.nvim_lspconfig'}

        -- Libraries
            use {'nvim-telescope/telescope.nvim', requires='nvim-lua/plenary.nvim'}
            use {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}

        -- Interface
            use (require 'packer_cfg.shade')

        -- Highlight
            -- use 'yamatsum/nvim-cursorline'

        -- Colocschemes
            use {'jonathanfilip/vim-lucius', config=function() vim.cmd[[colorscheme lucius | LuciusBlack]] end}

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
            --use{'inkarkat/vim-CountJump', requires=' inkarkat/vim-ingo-library'} use{'inkarkat/vim-SyntaxRange', requires='inkarkat/vim-ingo-library'}
            --use 'tpope/vim-repeat'
            --use 'inkarkat/vim-visualrepeat'

        -- Indentation
            use {'thiagoalessio/rainbow_levels.vim', opt=true, cmd='RainbowLevelsToggle'}
            use {'kien/rainbow_parentheses.vim',     opt=true, cmd='RainbowParenthesesToggle'}
            use {'Yggdroot/indentLine',              opt=true, cmd={'IndentLinesEnable', 'IndentLinesToggle'},
                 config=function()
                     vim.g.indentLine_enabled=0
                     vim.cmd[[au FileType cpp,python :IndentLinesEnable]]
                 end}
            use {'nathanaelkane/vim-indent-guides',  opt=true, cmd={'IndentGuidesEnable', 'IndentGuidesToggle'}}

        -- Menus
            use (require 'packer_cfg.quickui')

        -- Diff tools
            use {'will133/vim-dirdiff', opt=true, config=require'packer_cfg.dirdiff', cmd='DirDiff'}

        -- Filetype
            -- tex
                use 'KeitaNakamura/tex-conceal.vim'
                use {'lervag/vimtex', config=require'packer_cfg.vimtex', opt=true, ft={'tex', 'plaintex'}}

        -- Snippets
            use {'SirVer/ultisnips', requires='honza/vim-snippets', config=function()
                vim.g.UltiSnipsExpandTrigger='<Tab>'
                vim.g.UltiSnipsJumpForwardTrigger='<Tab>'
                vim.g.UltiSnipsJumpBackwardTrigger='<S-Tab>'
            end}

        -- Files and folders
            use {'zenbro/mirror.vim', opt=true, cmd={'MirrorConfig', 'MirrorPush', 'MirrorPull'},
                 config=function()
                    local map = vim.api.nvim_set_keymap
                    map('n', '<Leader>rc', ':MirrorPush<CR>', {})
                    map('n', '<Leader>rp', ':MirrorPull<CR>', {})
                end}

        -- Local plugins
            --use {"~/.config/nvim/bundle_local/SwapText-1.02",  requires='inkarkat/CountJump'}
            use {'~/.config/nvim/bundle_local/txt-vim-syntax-1.2', opt=true, ft='txt'}
            use {'~/.config/nvim/bundle_local/txtfmt_v3.1', opt=true, ft='txt'}
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
        call dein#add('JuliaEditorSupport/julia-vim')
        "call dein#add('brooth/far.vim')        " :Far
--]]
