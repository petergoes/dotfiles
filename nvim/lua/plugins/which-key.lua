return {
	"folke/which-key.nvim",
	event = "User FTNotDashboard",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		preset = 'modern',
		icons = {
			separator = "",
			mappings = false,
		}
	},
	keys = {
		{
			"<leader>wk",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
