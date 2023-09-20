return {
    "nvim-zh/colorful-winsep.nvim",
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
