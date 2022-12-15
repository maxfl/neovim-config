return {
    'crispgm/nvim-tabline',
    config = function()
        require 'tabline'.setup{}
        vim.o.showtabline=1
    end,
}
