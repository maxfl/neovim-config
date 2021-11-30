return {
    'akinsho/bufferline.nvim',
    requires='kyazdani42/nvim-web-devicons',
    config=function()
        require 'bufferline'.setup{
            always_show_bufferline = false
        }
    end
}

