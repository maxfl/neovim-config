return {
	"y3owk1n/time-machine.nvim",
	-- version = "*", -- remove this if you want to use the `main` branch
    cmd = 'TimeMachineToggle',
    init = function()
        local map = vim.api.nvim_set_keymap
        map('n', '<Leader>uu', '<CMD>TimeMachineToggle<CR>', {})
    end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
        split_opts = {
            split = "right"
        }
	},
}
