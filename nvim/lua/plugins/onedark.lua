return { 
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require('onedark').setup {
			style = 'dark',
			transparent = true,

			lualine = {
				transparent = true, -- lualine center bar transparency
			},
		}
	end
}
