return {
    'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
    config=function()
        local wk=require 'whichkey_setup'

        wk.config {
            hide_statusline = false,
            default_keymap_settings = {
                silent=true,
                noremap=true,
            },
            default_mode = 'n',
        }

        local keymap = {
            f = { -- set a nested structure
                name = '+find',
                b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
                h = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
                c = {
                    name = '+commands',
                    c = {'<Cmd>Telescope commands<CR>', 'commands'},
                    h = {'<Cmd>Telescope command_history<CR>', 'history'},
                },
                q = {'<Cmd>Telescope quickfix<CR>', 'quickfix'},
                g = {
                    name = '+git',
                    g = {'<Cmd>Telescope git_commits<CR>', 'commits'},
                    c = {'<Cmd>Telescope git_bcommits<CR>', 'bcommits'},
                    b = {'<Cmd>Telescope git_branches<CR>', 'branches'},
                    s = {'<Cmd>Telescope git_status<CR>', 'status'},
                },
            }
        }
        wk.register_keymap('leader', keymap)
    end
}
