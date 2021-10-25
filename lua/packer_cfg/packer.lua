vim.cmd [[packadd packer.nvim]]
local packer=require 'packer'

packer.init{opt_default=false}
packer.startup(function()
    use {'nvim-treesitter/nvim-treesitter', config=require'packer_cfg.nvim_treesitter'}
    use {'neovim/nvim-lspconfig'}
    use {'anott03/nvim-lspinstall', config=require'packer_cfg.nvim_lspconfig'}
end)

