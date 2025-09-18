return {
    "heavenshell/vim-pydocstring",
    ft = "python",
    build = "make install",
    config = function()
      -- Optional: Set keybindings or options
      vim.keymap.set("n", "<leader>us", ":Pydocstring<CR>", { silent = true, desc = "Generate Python docstring" })
    end,
  }
  -- lsp = {
  --   config = {
  --     pyright = {
  --       settings = {
  --         python = {
  --           pythonPath = ".env/bin/python", -- Path to your venv Python
  --           venvPath = ".env", -- Relative/Absolute path to venv
  --           analysis = {
  --             typeCheckingMode = "off", -- Optional: Disable strict type-checking
  --             autoSearchPaths = true, -- Search for modules in workspace
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },

