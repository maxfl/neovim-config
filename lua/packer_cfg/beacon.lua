return {
    'danilamihailov/beacon.nvim',
    cond='not vim.o.diff',
    config=function()
        vim.g.beacon_timeout=800
        vim.g.beacon_size=60
        vim.cmd[[hi Beacon guibg=#000000]]
    end
}
