return {
	"folke/which-key.nvim",
	event = "User FTNotDashboard",
	keys = {
		{
			"<leader>wk",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local wk = require('which-key')
		wk.setup({
			preset = 'modern',
			icons = {
				separator = "",
				mappings = false,
			},
		})
		wk.add({
			{ "<leader>b", group = "Buffers" },
			{ "<leader>c", group = "Code Actions" },
		})
	end
}
