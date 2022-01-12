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

        local function vimtex()
            local status={}

            local vt_local = vim.b.vimtex_local
            if vt_local then
                table.insert(status, vt_local.active and 'l' or 'm')
            end

            local vimtex = vim.b.vimtex
            if vimtex then
                local viewer = vimtex.viewer
                if viewer and viewer.xwin_id~=0 then
                    table.insert(status, 'v')
                end

                local compiler = vimtex.compiler
                if compiler and compiler.is_running~=vim.NIL then
                    table.insert(status, compiler.continuous and '∞' or '1')
                end
            end

            if #status==0 then
                return ''
            end

            table.insert(status, 1, '{')
            table.insert(status, '}')

            return table.concat(status)
        end

        require 'lualine'.setup{
            sections = {
                lualine_a = {
                    'mode',
                    keymap,
                    {
                        paste,
                        color = { fg='red', gui='bold' },
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
                    { vimtex, cond = function() return vim.o.filetype=='tex' end },
                    { 'encoding', cond = function() return vim.o.encoding~='utf-8' end },
                    { 'fileformat', cond = function() return vim.o.fileformat~='unix' end },
                    'filetype'
                },
            },
            inactive_sections = {
                lualine_c = {
                    {
                        'filename',
                        path = 1,
                        -- shorting_target = 0
                    }
                },
            }
        }
    end
}
