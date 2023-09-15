return {
  "folke/zen-mode.nvim",
  cmd = 'ZenMode',
  init = function()
      vim.api.nvim_set_keymap('n', '<Leader>uz', '<CMD>ZenMode<CR>', {})
  end,
  config = function()
    require 'zen-mode'.setup {
        backdrop = 1,
        on_open = function(win)
            require 'shade'.toggle()
        end,
        -- callback where you can add custom code when the Zen window closes
        on_close = function()
            require 'shade'.toggle()
        end,
    }
  end
}
