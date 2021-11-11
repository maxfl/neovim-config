return {
    'jiangmiao/auto-pairs',
    setup = function()
        vim.g.AutoPairsFlyMode=1
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
