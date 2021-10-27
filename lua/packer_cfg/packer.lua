vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{opt_default=false}
packer.startup(function()
    -- Tree sitter and LSP
    use {'nvim-treesitter/nvim-treesitter', config=require'packer_cfg.nvim_treesitter'}
    use {'neovim/nvim-lspconfig'}
    use {'anott03/nvim-lspinstall', config=require'packer_cfg.nvim_lspconfig'}

    -- Libraries
    --use{'inkarkat/vim-CountJump', requires=' inkarkat/vim-ingo-library'}
    --use{'inkarkat/vim-SyntaxRange', requires='inkarkat/vim-ingo-library'}
    use {'nvim-telescope/telescope.nvim', requires='nvim-lua/plenary.nvim'}
    --use 'tpope/vim-repeat'
    --use 'inkarkat/vim-visualrepeat'

    --
    -- Interface and highlight
    --
    -- Colocschemes
    use {'jonathanfilip/vim-lucius', config=function() vim.cmd[[colorscheme lucius | LuciusBlack]] end}
    --use {'mhartington/oceanic-next', config=function() vim.cmd[[colorscheme OceanicNext]] end}

    --use {'tadaa/vimade', config=function() vim.g.vimade={fadelevel = 0.7, usecursorhold=true} end}
    use 'machakann/vim-highlightedyank'

    -- Indentation
    use {'thiagoalessio/rainbow_levels.vim', opt=true, cmd='RainbowLevelsToggle'}
    use {'kien/rainbow_parentheses.vim',     opt=true, cmd='RainbowParenthesesToggle'}
    use {'Yggdroot/indentLine',              opt=true, cmd={'IndentLinesEnable', 'IndentLinesToggle'},
         config=function()
             vim.g.indentLine_enabled=0
             vim.cmd[[au FileType cpp,python :IndentLinesEnable]]
         end}
    use {'nathanaelkane/vim-indent-guides',  opt=true, cmd={'IndentGuidesEnable', 'IndentGuidesToggle'}}

    -- Windows
    use {'ncm2/float-preview.nvim', config=function() vim.g['float_preview#docked']=1; vim.opt.completeopt:append 'preview' end}

    -- Statusline
    use {'windwp/windline.nvim', config=function() require('wlsample.airline') end}

    -- Menus
    --call dein#add('sudormrfbin/cheatsheet.nvim.git', { 'depends': 'telescope' })
    use {'skywind3000/vim-quickui', opt=true, fn='quickui#menu#open', setup=require'packer_cfg.quickui'.setup, config=require'packer_cfg.quickui'.config}

    -- Diff tools
    use {'will133/vim-dirdiff', opt=true, config=require'packer_cfg.dirdiff', cmd='DirDiff'}

    -- Local plugins
    --use {"~/.config/nvim/bundle_local/SwapText-1.02",  requires='inkarkat/CountJump'}
    use "~/.config/nvim/bundle_local/txt-vim-syntax-1.2"
    use "~/.config/nvim/bundle_local/txtfmt_v3.1"
end)

