return{
    'salsifis/vim-transpose',
    cmd = 'TransposeInteractive',
    init = function()
        local map = vim.api.nvim_set_keymap
        map('x', '<leader>eT', '<CMD>TransposeInteractive<CR>', {silent=true})
    end
}
