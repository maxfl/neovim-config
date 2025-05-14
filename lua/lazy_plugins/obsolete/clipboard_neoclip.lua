return {
  'AckslD/nvim-neoclip.lua',
  dependencies = 'nvim-telescope/telescope.nvim',
--  after='telescope.nvim',
  config = function()
    require('neoclip').setup()
    -- {
      -- history = 1000,
      -- enable_persistant_history = false,
      -- db_path = vim.fn.stdpath("data") .. "/databases/neoclip.sqlite3",
      -- filter = nil,
      -- preview = true,
      -- default_register = '"',
      -- content_spec_column = false,
      -- on_paste = {
      --   set_reg = false,
      -- },
      -- keys = {
      --   i = {
      --     select = '<cr>',
      --     paste = '<c-p>',
      --     paste_behind = '<c-k>',
      --     custom = {},
      --   },
      --   n = {
      --     select = '<cr>',
      --     paste = 'p',
      --     paste_behind = 'P',
      --     custom = {},
      --   },
      -- },
    -- }
    require('telescope').extensions.neoclip.default()

    local map = vim.api.nvim_set_keymap
    map('n', '<C-p>', '<CMD>Telescope neoclip<CR>', {})
  end,
}
