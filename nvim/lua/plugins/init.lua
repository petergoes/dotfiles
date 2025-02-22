return {
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
		end
	},

	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "navarasu/onedark.nvim",       lazy = false, priority = 1000 },
	{ "folke/tokyonight.nvim",       lazy = false, priority = 1000 },

}
