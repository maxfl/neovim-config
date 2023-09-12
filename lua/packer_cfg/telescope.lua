return {
    {
        'nvim-telescope/telescope.nvim',
        requires={'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons', 'folke/which-key.nvim'},
        config=function()
            local actions = require 'telescope.actions'
            require 'telescope'.setup{
                defaults = {
                    layout_strategy = 'vertical',
                    mappings = {
                        n = {
                            ['d'] = actions.delete_buffer,
                            ['<c-d>'] = actions.delete_buffer
                        },
                        i = {
                            ['<c-d>'] = actions.delete_buffer
                        }
                    }
                }
            }

            local map, opts = vim.api.nvim_set_keymap, {}
            map('', '<C-p>', '<CMD>Telescope oldfiles<CR>', opts)
            map('', '<C-Space>',  '<CMD>Telescope buffers<CR>', opts)

            local status, whichkey=pcall(function() return require 'which-key' end)
            if not status then return end

            whichkey.register{
                ['<Leader>]'] = {
                    name  = '+telescope',
                    ['/'] = {'<CMD>Telescope current_buffer_fuzzy_find<CR>', 'fuzzy find (buffer)'},
                    b     = {'<CMD>Telescope buffers<CR>', 'buffers'},
                    c     = {'<CMD>Telescope commands<CR>', 'commands'},
                    -- f     = {'<CMD>Telescope find_files<CR>', 'find files'},
                    f     = {'<CMD>:lua require "telescope.builtin".find_files{follow=true}<CR>', 'find files'},
                    h     = {'<CMD>Telescope heading<CR>', 'heading'},
                    i     = {'<CMD>Telescope import<CR>', 'import'}, -- extension
                    k     = {'<CMD>Telescope keymaps<CR>', 'keymaps'},
                    o     = {'<CMD>Telescope oldfiles<CR>', 'old files'},
                    p     = {'<CMD>Telescope projects<CR>', 'projects'},
                    t     = {'<CMD>Telescope<CR>', 'telescope'},
                    [']'] = {'<CMD>Telescope<CR>', 'telescope'},
                    -- 'nvim-telescope/telescope-symbols.nvim'
                    s     = {'<CMD>lua require "telescope.builtin".symbols{ sources = {"math", "latex"} }<CR>', 'symbols'},
                },
                z = {
                    name = '+spell/fold',
                    ['='] = {'<CMD>Telescope spell_suggest<CR>', 'Spelling suggestions'}
                }
            }
        end
    },
    {
        'nvim-telescope/telescope-packer.nvim',
        requires='nvim-telescope/telescope.nvim',
        config=function()
            local map, opts = vim.api.nvim_set_keymap, {}
            map('', '<Leader>]P', '<CMD>lua require "telescope".extensions.packer.packer()<CR>', opts)

            require 'telescope'.load_extension 'packer'
        end
    },
    {
        'piersolenski/telescope-import.nvim',
        requires='nvim-telescope/telescope.nvim',
        config=function()
            require("telescope").load_extension("import")
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
