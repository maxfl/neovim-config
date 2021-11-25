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
            conf.pair('$',  {close='$',  filetypes={'tex'}})
            conf.pair(',,', {close='``', filetypes={'tex'}})
            conf.pair('`',  {close="'",  filetypes={'tex'}})
            conf.pair('<<', {close='>>', filetypes={'tex'}})
            conf.pair('\\(', {close='\\)', filetypes={'tex'}})

            --
            -- Lua
            --
            conf.pair('[=[',  {close=']=]',  filetypes={'lua'}})
            conf.pair('[==[', {close=']==]', filetypes={'lua'}})
            -- conf.pair('function()', 'end')
        end)
    end
}
