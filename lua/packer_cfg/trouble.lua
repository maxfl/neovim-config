return {
  'folke/trouble.nvim',
  requires='kyazdani42/nvim-web-devicons',
  opt=true,
  cmd='Trouble*',
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

