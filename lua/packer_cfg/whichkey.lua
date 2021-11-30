return {
  'folke/which-key.nvim',
  config = function()
    local wk=require 'which-key'
    wk.setup{}

    wk.register({
        ['<leader>'] = {
            ['-'] = 'choosewin',
            [']'] = {
                name = '+telescope',
                ['/'] = 'fuzzy find (buffer)',
                P = 'plugins',
                b = 'buffers',
                c = 'commands',
                d = 'docs',
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
            g = '+git',
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
                S = { '<CMD>PackerSync<CR>', 'Sync'},
                c = { '<CMD>PackerCompile<CR>', 'compile'},
                i = { '<CMD>PackerInstall<CR>', 'install'},
                s = { '<CMD>PackerStatus<CR>', 'status'},
                u = { '<CMD>PackerUpdate<CR>', 'update'},
            },
            u = {
                name = '+utils',
                a = 'code actions',
                o = 'symbols outline',
                s = 'toggle shade',
                u = 'undo tree',
            }
        },
    })
end
}
