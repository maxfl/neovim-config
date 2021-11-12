return {
    'qxxxb/vim-searchhi',
    config=function()
        local map, opts=vim.api.nvim_set_keymap, {}
        map('n', '/', '<Plug>(searchhi-/)', opts)
        map('n', '?', '<Plug>(searchhi-?)', opts)
        map('n', 'n', '<Plug>(searchhi-n)', opts)
        map('n', 'N', '<Plug>(searchhi-N)', opts)
        map('n', '*', '<Plug>(searchhi-*)', opts)
        map('n', '#', '<Plug>(searchhi-#)', opts)
        map('n', 'g*', '<Plug>(searchhi-g*)', opts)
        map('n', 'g#', '<Plug>(searchhi-g#)', opts)
        map('n', '<C-L>', '<Plug>(searchhi-clear-all', {silent=true})

        map('v', '/', '<Plug>(searchhi-v-/)', opts)
        map('v', '?', '<Plug>(searchhi-v-?)', opts)
        map('v', 'n', '<Plug>(searchhi-v-n)', opts)
        map('v', 'N', '<Plug>(searchhi-v-N)', opts)
        map('v', '*', '<Plug>(searchhi-v-*)', opts)
        map('v', '#', '<Plug>(searchhi-v-#)', opts)
        map('v', 'g*', '<Plug>(searchhi-v-g*)', opts)
        map('v', 'g#', '<Plug>(searchhi-v-g#)', opts)
        -- vmap <silent> <C-L> <Plug>(searchhi-v-off-all)
    end
}
