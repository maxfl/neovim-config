return {
    'jiangmiao/auto-pairs',
    setup = function()
        vim.g.AutoPairsFlyMode=1
        vim.g.AutoPairsShortcutToggle=''
        vim.g.AutoPairsShortcutJump=''

        --vim.g.AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`'}
    end,
    config = function()
        target=vim.g.AutoPairs
        target['“']='”'
        target['‘' ]= '’'
        target['„']='“'
        target['«']='»'
    end
}
