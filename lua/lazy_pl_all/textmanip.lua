return {
    't9md/vim-textmanip',
    init = function()
        vim.g.textmanip_enable_mappings=false
        vim.g.textmanip_move_ignore_shiftwidth=true
    end,
    config=function()
        local map, opts=vim.api.nvim_set_keymap, {}
        map('x', '<C-j>', '<Plug>(textmanip-move-down)', opts)
        map('x', '<C-k>', '<Plug>(textmanip-move-up)', opts)
        map('x', '<C-h>', '<Plug>(textmanip-move-left)', opts)
        map('x', '<C-l>', '<Plug>(textmanip-move-right)', opts)

        vim.cmd[[
            function! TMoff()
                set ei+=TextYankPost
            endfunction
            function! TMon()
                set ei-=TextYankPost
            endfunction
        ]]
    end
}
