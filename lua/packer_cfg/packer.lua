vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{opt_default=false}
packer.startup(function()
    -- Lua
        -- Tree sitter and LSP
            use {'nvim-treesitter/nvim-treesitter', config=require'packer_cfg.nvim_treesitter'}
            use {'neovim/nvim-lspconfig'}
            use {'anott03/nvim-lspinstall', config=require'packer_cfg.nvim_lspconfig'}

        -- Libraries
            use {'nvim-telescope/telescope.nvim', requires='nvim-lua/plenary.nvim'}
            use {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}

        -- Interface and highlight

        -- Colocschemes
            use {'jonathanfilip/vim-lucius', config=function() vim.cmd[[colorscheme lucius | LuciusBlack]] end}

        -- Clipboard
            use 'machakann/vim-highlightedyank'

        -- VCS
            use {'lewis6991/gitsigns.nvim', config=function() require('gitsigns').setup() end, requires='nvim-lua/plenary.nvim'}

        -- Statusline
            use {'windwp/windline.nvim', config=function() require('wlsample.airline') end, requires='lewis6991/gitsigns.nvim' }
            --use {'nvim-lualine/lualine.nvim', config=function() require'lualine'.setup() end, requires={'kyazdani42/nvim-web-devicons', opt = true}}

        -- Filetype
            -- lua
                use 'rafcamlet/nvim-luapad'

        -- Completion
            use {'hrsh7th/nvim-cmp', config=require'packer_cfg.nvim_cmp',
                    requires={
                        'hrsh7th/cmp-nvim-lsp',
                        'hrsh7th/cmp-buffer',
                        'hrsh7th/cmp-path',
                        'hrsh7th/cmp-cmdline',
                        'quangnguyen30192/cmp-nvim-ultisnips',
                        'petertriho/cmp-git',
                        'hrsh7th/cmp-nvim-lua',
                        'f3fora/cmp-spell',
                        'kdheepak/cmp-latex-symbols',
                        'hrsh7th/cmp-omni'
                    }
                }

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
            use {'skywind3000/vim-quickui', opt=true, fn='quickui#menu#open', setup=require'packer_cfg.quickui'.setup, config=require'packer_cfg.quickui'.config}

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

    -- Interface
        use {'tadaa/vimade', config=function() vim.g.vimade={fadelevel = 0.7, usecursorhold=true} end}

    -- Menus
       call dein#add('sudormrfbin/cheatsheet.nvim.git', { 'depends': 'telescope' })

    -- Filetype
        -- Markdown
            call dein#add('previm/previm', { 'hook_add': "
                        \ let g:previm_open_cmd = \"bash -c 'qutebrowser --target window $* &' -- \"\n
                        \ "})
--]]
