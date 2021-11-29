return {
  'folke/which-key.nvim',
  config = function()
    local wk=require 'which-key'
    wk.setup{}

    wk.register({
        ["<leader>"] = {
            ['-'] = 'choosewin',
            [']'] = {
                name = "+telescope",
                o = "old files" ,
                f = "find files" ,
                k = "keymaps" ,
                c = "commands" ,
                b = "buffers" ,
                p = "projects" ,
                r = "readme" ,
                d = "docs" ,
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
            w = {
                name = '+window',
                i = 'winteract',
                t = 'toggle focus',
                ['='] = 'equalise (focus)',
                c = 'choosewin',
                m = 'move (winshift)',
                M = 'swap (winshift)',
                s = 'symbols',
            },
            g = '+git',
        },
    })
end
}
