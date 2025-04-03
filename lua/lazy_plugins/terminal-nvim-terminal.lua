return {
    'norcalli/nvim-terminal.lua',
    ft='terminal',
    config=function()
        require 'terminal'.setup()
    end,
}
