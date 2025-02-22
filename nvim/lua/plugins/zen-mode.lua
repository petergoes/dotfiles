return {
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			window = {
				width = 82,
			},
			on_open = function()
				vim.cmd('setlocal nonumber')
			end,
			on_close = function()
				vim.cmd('setlocal number')
			end
		}
	}
}
