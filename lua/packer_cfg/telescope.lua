return {
    {
        'nvim-telescope/telescope.nvim',
        requires={'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'},
        config=function()
            local map, opts = vim.api.nvim_set_keymap, {}
            map('', '<C-p>', '<CMD>Telescope oldfiles<CR>', opts)

            map('', '<Leader>]/', '<CMD>Telescope current_buffer_fuzzy_find<CR>', opts)
            map('', '<Leader>]b', '<CMD>Telescope buffers<CR>', opts)
            map('', '<Leader>]c', '<CMD>Telescope commands<CR>', opts)
            map('', '<Leader>]f', '<CMD>Telescope find_files<CR>', opts)
            map('', '<Leader>]h', '<CMD>Telescope heading<CR>', opts)
            map('', '<Leader>]k', '<CMD>Telescope keymaps<CR>', opts)
            map('', '<Leader>]o', '<CMD>Telescope oldfiles<CR>', opts)
            map('', '<Leader>]p', '<CMD>Telescope projects<CR>', opts)
            map('', '<Leader>]t', '<CMD>Telescope<CR>', opts)

            map('', '<C-Space>',  '<CMD>Telescope buffers<CR>', opts)
            map('', '<S-Space>',  '<CMD>Telescope<CR>', opts)
        end
    },
    {
        'nvim-telescope/telescope-packer.nvim',
        requires='nvim-telescope/telescope.nvim',
        config=function()
            local map, opts = vim.api.nvim_set_keymap, {}
            map('', '<Leader>]P', '<CMD>lua require "telescope".extensions.packer.plugins()<CR>', opts)

            -- require 'telescope'.load_extension 'packer'
        end
    },
    {
        'crispgm/telescope-heading.nvim',
        requires='nvim-telescope/telescope.nvim',
        config=function()
            require 'telescope'.load_extension 'heading'
        end
    },
    {
        'nvim-telescope/telescope-symbols.nvim',
        requires='nvim-telescope/telescope.nvim',
        config=function()
            local map, opts = vim.api.nvim_set_keymap, {}
            map('', '<Leader>]s', '<CMD>lua require "telescope.builtin".symbols{ sources = {"math", "latex"} }<CR>', opts)
        end
    },
}
    --
    -- {
    --     'nvim-telescope/telescope-hop.nvim',
    --     requires='nvim-telescope/telescope.nvim',
    --     after='telescope.nvim',
    --     config=function()
    --         local telescope=require('telescope')
    --         telescope.setup {
    --             defaults = {
    --                 mappings = {
    --                     i = {
    --                         -- IMPORTANT
    --                         -- either hot-reloaded or `function(prompt_bufnr) telescope.extensions.hop.hop end`
    --                         ["<C-h>"] = R("telescope").extensions.hop.hop,  -- hop.hop_toggle_selection
    --                         -- custom hop loop to multi selects and sending selected entries to quickfix list
    --                         ["<C-space>"] = function(prompt_bufnr)
    --                             local opts = {
    --                                 callback = actions.toggle_selection,
    --                                 loop_callback = actions.send_selected_to_qflist,
    --                             }
    --                             require("telescope").extensions.hop._hop_loop(prompt_bufnr, opts)
    --                         end,
    --                     },
    --                 },
    --             },
    --         }
    --         telescope.load_extension 'hop'
    --     end
    -- }
-- }
