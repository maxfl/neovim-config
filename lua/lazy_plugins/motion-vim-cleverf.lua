return {
    'rhysd/clever-f.vim',
    config=function()
        local map = vim.api.nvim_set_keymap
        local noremap={noremap=true}
        map('n', '<Leader>fr', '<Plug>(clever-f-reset)', noremap)
        map('n', ';', '<Plug>(clever-f-repeat-forward)', noremap)
        -- nnoremap , <Plug>(clever-f-repeat-back)\n

        vim.cmd [[
            nmap а <Plug>(clever-f-f)
            xmap а <Plug>(clever-f-f)
            omap а <Plug>(clever-f-f)
            nmap А <Plug>(clever-f-F)
            xmap А <Plug>(clever-f-F)
            omap А <Plug>(clever-f-F)
            nmap е <Plug>(clever-f-t)
            xmap е <Plug>(clever-f-t)
            omap е <Plug>(clever-f-t)
            nmap Е <Plug>(clever-f-T)
            xmap Е <Plug>(clever-f-T)
            omap Е <Plug>(clever-f-T)
        ]]
    end
}
