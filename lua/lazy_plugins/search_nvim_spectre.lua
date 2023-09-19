return {
    'windwp/nvim-spectre',
    -- module='spectre',
    init = function()
        local map, noremap=vim.api.nvim_set_keymap, {noremap=true}
        map('n', '<leader>fs', '<CMD>lua require("spectre").open()<CR>', noremap)
        -- map('n', '<leader>sw', '<CMD>lua require("spectre").open_visual({select_word=true})<CR>')
        -- map('v', '<leader>s', '<CMD>lua require("spectre").open_visual()<CR>')
        -- map('n', '<leader>sp', 'viw<CMD>lua require("spectre").open_file_search()<CR>')
    end
}
