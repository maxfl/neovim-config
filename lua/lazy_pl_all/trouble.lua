return {
  'folke/trouble.nvim',
  cmd = {'Trouble', 'TroubleToggle'},
  dependencies = 'kyazdani42/nvim-web-devicons',
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

