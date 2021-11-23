return {
    'steelsojka/pears.nvim',
    config=function()
        local pears=require 'pears'
        pears.setup(function(conf)
            conf.pair('“', '”')
            conf.pair('‘', '’')
            conf.pair('„', '“')
            conf.pair('«', '»')

            --
            -- Tex
            --
            -- conf.pair('\\(', '\\)')
            -- conf.pair('\\[', '\\]')
            conf.pair('$', '$')
            conf.pair(',,', '``')
            conf.pair('`', "'")
            conf.pair('<<', ">>")

            local tex={filetypes='tex'}
            conf.pair('$', tex)
            conf.pair(',,', tex)
            conf.pair('`', tex)
            conf.pair('<<', tex)
            -- conf.pair('\\(', tex)
            -- conf.pair('\\[', tex)

            --
            -- Lua
            --
            local lua={filetypes='lua'}
            conf.pair('[=[', ']=]')
            conf.pair('[==[', ']==]')
            -- conf.pair('function()', 'end')

            conf.pair('[=[', lua)
            conf.pair('[==[', lua)
            -- conf.pair('function()', lua)
        end)
    end
}
