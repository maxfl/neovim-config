return {
    'itchyny/vim-external',
    -- keys={
    --     {'n', '<Plug>(external-editor)'},
    --     {'n', '<Plug>(external-explorer)'},
    --     {'n', '<Plug>(external-browser)'},
    -- },
    init = function()
        local map=vim.api.nvim_set_keymap
        local opts={}
        map('', '<Leader>oe', '<Plug>(external-editor)',   opts)
        map('', '<Leader>oo', '<Plug>(external-explorer)', opts)
        map('', '<Leader>ob', '<Plug>(external-browser)',  opts)
    end
}
