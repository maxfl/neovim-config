return {
  'folke/which-key.nvim',
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
            ['-'] = 'choosewin',
            [']'] = {
                name = '+telescope',
                ['/'] = 'fuzzy find (buffer)',
                P = 'plugins',
                b = 'buffers',
                c = 'commands',
                -- d = 'docs',
                f = 'find files',
                h = 'heading',
                k = 'keymaps',
                o = 'old files',
                p = 'projects',
                -- r = 'readme',
                s = 'symbols',
                t = 'telescope',
            },
            ['='] = {
                name = '+conflicts',
                ['.'] = 'take this',
                ['>'] = 'take theirs',
                ['|'] = 'take base',
                ['<'] = 'take ours',
                ['d'] = 'take none',
            },
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
                l = 'linediff',
                r = 'reset linediff',
            },
            g = {
                name = '+git',
                C = 'commit all',
                a = 'add',
                c = 'commit',
                t = 'push',
                h = 'pull',
                s = 'status',
            },
            l={
                name='+latex',
                p='->ascii',
                P='->ascii preview'
            },
            w = {
                name = '+window',
                i = 'winteract',
                t = 'toggle focus',
                ['='] = 'equalize (focus)',
                ['+'] = 'maximize (focus)',
                c = 'choosewin',
                m = 'move (winshift)',
                M = 'swap (winshift)',
                s = 'symbols',
            },
            p = {
                name = '+packer',
                C = { '<CMD>PackerClean<CR>', 'Clean'},
                I = { '<CMD>PackerInstall<CR>', 'Install'},
                S = { '<CMD>PackerSync<CR>', 'Sync'},
                U = { '<CMD>PackerUpdate<CR>', 'Update'},
                c = { '<CMD>PackerCompile<CR>', 'compile'},
                p = { '<CMD>PackerStatus<CR>', 'status'},
            },
            u = {
                name = '+utils',
                a = 'code actions',
                b = 'buffers',
                o = 'outline (symbols)',
                s = 'toggle shade',
                p = 'project root',
                u = 'undo tree',
                v = 'outline (voom)',
                z = 'zen mode',
            }
        },
    })
end
}
