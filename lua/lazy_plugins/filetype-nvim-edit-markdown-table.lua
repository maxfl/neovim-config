return {
    'kiran94/edit-markdown-table.nvim',
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
        require 'edit-markdown-table'.setup()
    end,
}
