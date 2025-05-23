return {
    {
        'tpope/vim-surround',
        init = function()
            vim.g.surround_no_mappings=true
        end
    },
    {
        'mg979/vim-visual-multi',
        dependencies = 'tpope/vim-surround',
        init = function()
            vim.g.VM_theme = 'neon'
        end,
        config = function()
            vim.cmd[[
                function! VM_Start()
                    silent! TSContextDisable
                endfunction
                function! VM_Exit()
                    silent! TSContextEnable
                  " let bn=string(bufnr())
                  " exe 'imap <buffer> <silent> <BS> <Cmd>lua require("pears").handle_backspace('.bn.')<CR>'
                  " exe 'imap <buffer> <silent> <CR> <Cmd>lua require("pears").handle_return('.bn.')<CR>'
                endfunction
            ]]

            local map = vim.api.nvim_set_keymap
            map('x', 'I',  '<Plug>(VM-Visual-Cursors)', {})
            map('x', '<Leader>I', 'I', {noremap=true})
        end
    }
}
