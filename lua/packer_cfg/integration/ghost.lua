return {
    'subnut/nvim-ghost.nvim',
    config = function()
        vim.api.nvim_create_augroup("nvim_ghost_user_autocommands", { clear = true })
        vim.api.nvim_create_autocmd("User", {
            group = "nvim_ghost_user_autocommands",
            pattern = {
                "*stackoverflow.com",
                "*github.com",
                "*git.jinr.com",
                "*hackmd.com",
                "*jupyter.ihep.ac.cn",
            },
            command = "setf markdown",
        })
        vim.api.nvim_create_autocmd("User", {
            group = "nvim_ghost_user_autocommands",
            pattern = {
                "*overleaf.com",
                "latex.ihep.ac.cn",
            },
            command = "setf tex",
        })
    end
}
