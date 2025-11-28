-- draws on top of lualine
return {
    "nvim-zh/colorful-winsep.nvim",
    enabled = false,
    config = function ()
        require 'colorful-winsep'.setup {
            no_exec_files = {
                "packer",
                "TelescopePrompt",
                "mason",
                "CompetiTest",
                "NvimTree",
                "ctrlspace"
            },
        }
    end
}
