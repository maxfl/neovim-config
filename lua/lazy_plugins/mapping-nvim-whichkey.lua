return {
  'folke/which-key.nvim',
  priority = 80,
  config = function()
    local wk=require 'which-key'
    wk.setup{
        -- presets = {
        --     operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        --     motions = false, -- adds help for motions
        --     text_objects = false, -- help for text objects triggered after entering an operator
        --     windows = true, -- default bindings on <c-w>
        --     nav = true, -- misc bindings to work with windows
        --     z = true, -- bindings for folds, spelling and others prefixed with z
        --     g = true, -- bindings for prefixed with g
        -- },
        -- triggers = {
        --     "<leader>",
        --     'g',
        --     'z',
        --     '"'
        -- }
        triggers_blacklist = {
            -- list of mode / prefixes that should never be hooked by WhichKey
            -- this is mostly relevant for key maps that start with a native binding
            -- most people should not need to change this
            n = { "d" },
        },
    }

    wk.register({
        ['<leader>'] = {
            [ [[\]] ] = {
                name = '+visual multi',
                ['/'] = 'search',
                [ [[\]] ] = 'cursor at pos',
                ['A'] = 'select all',
                ['g'] = {
                    name='+...reselect',
                    S='reselect last'
                },
            },
            d = {
                name = '+diff',
                D = 'diagnostics (all)',
                d = 'diagnostics (buffer)',
                l = 'linediff',
                r = 'reset linediff',
            },
            w = {
                name = '+window',
                ['='] = 'equalize (focus)',
                M = 'swap (winshift)',
                f = 'maximize (focus)',
                i = 'winteract',
                m = 'move (winshift)',
                s = 'symbols',
                T = 'toggle focus',
            },
            u = {
                name = '+utils',
                a = 'code actions',
                b = 'buffers',
                o = 'outline (symbols)',
                p = 'project root',
                u = 'undo tree',
                v = 'outline (voom)',
                z = 'zen mode',
            }
        },
    })
end
}
