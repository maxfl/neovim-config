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
                c = { '<CMD>PackerCompile<CR>', 'compile'},
                i = { '<CMD>PackerInstall<CR>', 'install'},
                p = { '<CMD>PackerStatus<CR>', 'status'},
                s = { '<CMD>PackerSync<CR>', 'Sync'},
                u = { '<CMD>PackerUpdate<CR>', 'update'},
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
