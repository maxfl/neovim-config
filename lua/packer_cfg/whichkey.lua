return {
  'folke/which-key.nvim',
  config = function()
    local wk=require 'which-key'
    wk.setup{}

    wk.register({
        ["<leader>"] = {
            ['-'] = 'choosewin',
            [']'] = {
                name = "+telescope",
                o = "old files" ,
                f = "find files" ,
                k = "keymaps" ,
                c = "commands" ,
                b = "buffers" ,
                p = "projects" ,
            },
        },
    })
end
}
