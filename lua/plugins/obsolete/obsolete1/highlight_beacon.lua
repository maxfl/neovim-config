return {
    'danilamihailov/beacon.nvim',
    cond = function() return not vim.o.diff end,
    config=function()
        vim.g.beacon_timeout=800
        vim.g.beacon_size=60
        vim.cmd[[hi Beacon guibg=#FFFFFF]]
    end
}
