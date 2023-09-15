return {
    "ahmedkhalf/project.nvim",
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
        require "project_nvim".setup {
            manual_mode = true,
            silent_chdir = false,
        }
        require('telescope').load_extension('projects')

        vim.api.nvim_set_keymap('n', '<Leader>up', '<CMD>ProjectRoot<CR>', {})
    end
}
