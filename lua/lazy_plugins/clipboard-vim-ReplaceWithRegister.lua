return {
    "inkarkat/vim-ReplaceWithRegister",
    dependencies = {
        "tpope/vim-repeat",
        "inkarkat/vim-visualrepeat"
    },
    init = function()
        vim.cmd[[
            nmap gR  <Plug>ReplaceWithRegisterOperator
            nmap gRR <Plug>ReplaceWithRegisterLine
            xmap gR  <Plug>ReplaceWithRegisterVisual
        ]]
    end
}
