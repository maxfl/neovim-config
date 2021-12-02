return {
    'sunjon/Shade.nvim',
    cond='not vim.o.diff',
    config=function()
        require'shade'.setup{
            overlay_opacity = 55,
            opacity_step = 5,
            keys = {
                -- brightness_up    = '<C-M-Up>',
                -- brightness_down  = '<C-M-Down>',
                toggle           = '<Leader>us',
            }
        }
    end
}
