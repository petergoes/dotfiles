return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup({
			options = {
				separator_style = "thin",
				buffer_close_icon = '󰅖',
				close_icon = '󰅖',
				hover = {
					enabled = true,
					delay = 200,
					reveal = { 'close' }
				}
			},
			highlights = require("nord.plugins.bufferline").akinsho(),
		})
	end
}
