return {
    'dhruvasagar/vim-table-mode',
    opt=true,
    keys={{'n', '<Leader>tm'}},
    config=function()
        vim.g.table_mode_corner_corner='|'
        vim.g.table_mode_corner='|'
    end
}
