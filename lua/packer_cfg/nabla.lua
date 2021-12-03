return {
    'jbyuki/nabla.nvim',
    module = 'nabla',
    setup=function()
        local map, noremap=vim.api.nvim_set_keymap, {noremap=true}
        map('n', '<leader>lp', '<CMD>lua require("nabla").action()<CR>', noremap)
        map('n', '<leader>lP', '<CMD>lua require("nabla").popup()<CR>', noremap)
    end
}
