return {
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = 'dark',
			transparent = true,

			lualine = {
				transparent = true, -- lualine center bar transparency
			},
		},
	},

	-- {
	-- 	"shaunsingh/nord.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.nord_contrast = false
	-- 		vim.g.nord_borders = false
	-- 		vim.g.nord_disable_background = true
	-- 		vim.g.nord_italic = false
	-- 		vim.g.nord_uniform_diff_background = true
	-- 		vim.g.nord_bold = true
	-- 		require('nord').set()
	-- 	end
	-- },

	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
	},
}
