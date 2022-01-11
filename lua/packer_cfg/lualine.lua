return {
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config=function()

        local function keymap()
            return vim.o.iminsert>0 and vim.o.keymap:sub(1, 2) or ''
        end

        local function paste()
            return vim.o.paste and 'PASTE' or ''
        end

        require 'lualine'.setup{
            sections = {
                lualine_a = {
                    'mode',
                    keymap,
                    {
                        paste,
                        separator = nil,
                        color = { bg='red' }
                    },
                },
                lualine_c = {
                    {
                        'filename',
                        path = 1,
                        -- shorting_target = 0
                    }
                },
                lualine_x = {
                    { 'encoding', cond = function() return vim.o.encoding~='utf-8' end },
                    { 'fileformat', cond = function() return vim.o.fileformat~='unix' end },
                    'filetype'
                },
            }
        }
    end
}
