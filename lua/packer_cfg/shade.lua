return { 'sunjon/Shade.nvim',
    config=function()
        require'shade'.setup({
            overlay_opacity = 65,
            opacity_step = 5,
            keys = {
                brightness_up    = '<C-Up>',
                brightness_down  = '<C-Down>',
                toggle           = '<Leader>is',
            }
        })
    end
}
