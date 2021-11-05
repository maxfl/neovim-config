return{
    'salsifis/vim-transpose',
    opt=true,
    cmd='TransposeInteractive',
    setup=function()
        local map = vim.api.nvim_set_keymap
        map('v', '<leader>et', '<CMD>TransposeInteractive<CR>', {silent=true})
    end
}
