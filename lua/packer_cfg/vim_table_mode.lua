return {
    'dhruvasagar/vim-table-mode',
    keys={{'n', '<Leader>tm'}},
    config=function()
        vim.g.table_mode_corner_corner='|'
        vim.g.table_mode_corner='|'
    end
}
