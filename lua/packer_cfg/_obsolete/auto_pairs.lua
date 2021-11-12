return {
    'jiangmiao/auto-pairs',
    setup = function()
        vim.g.AutoPairsFlyMode=true
        vim.g.AutoPairsShortcutToggle=''
        vim.g.AutoPairsShortcutJump=''
    end,
    config = function()
        local target=vim.g.AutoPairs
        target['“']='”'
        target['‘' ]= '’'
        target['„']='“'
        target['«']='»'
    end
}
