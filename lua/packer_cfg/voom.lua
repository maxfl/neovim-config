return {
    'vim-voom/voom',
    cmd='VoomToggle'
    setup=function()
        vim.g.voom_ft_modes = {
            markdown='markdown', python='python',
            rst='rest', tex='latex', wiki='wiki',
        }
        vim.g.voom_tab_key = "<C-Tab>"

        local map=vim.api.nvim_set_keymap
        map('n', '<Leader>wo', '<CMD>VoomToggle<CR>', {silent=true})
    end
    config=function()
        vim.g.voom_tree_width = 60
        vim.g.voom_tree_placement='right'
    end
}
