--
-- Edit browser fields with vim via GhostText
--
return {
    "subnut/nvim-ghost.nvim",
    enabled = false,
    config = function()
        vim.api.nvim_create_augroup("nvim_ghost_user_autocommands", { clear = true })
        vim.api.nvim_create_autocmd("User", {
            group = "nvim_ghost_user_autocommands",
            pattern = {
                "*stackoverflow.com",
                "*github.com",
                "*git.jinr.com",
                "*hackmd.io",
                "jupyter.ihep.ac.cn",
                "mattermost.ihep.ac.cn",
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
        vim.api.nvim_create_autocmd("User", {
            group = "nvim_ghost_user_autocommands",
            pattern = {
                "localhost*:8888",
            },
            command = "setf python",
        })
    end,
}
