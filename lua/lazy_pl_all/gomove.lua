return {
    'booperlv/nvim-gomove',
    config = function()
        require 'gomove'.setup{
            map_defaults = false,
        }

        local map, opts = vim.api.nvim_set_keymap, {}

        map("n", "<C-h>", "<Plug>GoNSMLeft", opts)
        map("n", "<C-j>", "<Plug>GoNSMDown", opts)
        map("n", "<C-k>", "<Plug>GoNSMUp", opts)
        map("n", "<C-l>", "<Plug>GoNSMRight", opts)

        map("x", "<C-h>", "<Plug>GoVSMLeft", opts)
        map("x", "<C-j>", "<Plug>GoVSMDown", opts)
        map("x", "<C-k>", "<Plug>GoVSMUp", opts)
        map("x", "<C-l>", "<Plug>GoVSMRight", opts)

        -- map("n", "<C-h>", "<Plug>GoNSDLeft", opts)
        -- map("n", "<C-j>", "<Plug>GoNSDDown", opts)
        -- map("n", "<C-k>", "<Plug>GoNSDUp", opts)
        -- map("n", "<C-l>", "<Plug>GoNSDRight", opts)
        --
        -- map("x", "<C-h>", "<Plug>GoVSDLeft", opts)
        -- map("x", "<C-j>", "<Plug>GoVSDDown", opts)
        -- map("x", "<C-k>", "<Plug>GoVSDUp", opts)
        -- map("x", "<C-l>", "<Plug>GoVSDRight", opts)
    end
}
