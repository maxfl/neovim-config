return {
    'glacambre/firenvim',
    disable=true, -- shortcut not working
    run = function()
        vim.fn['firenvim#install'](0)
    end,
    config=function()
        vim.g.firenvim_config = {
            localSettings={
                ['.*'] = {takeover='never'}
            }
        }
    end
}