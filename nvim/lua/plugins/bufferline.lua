return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	after = "catppucchin",
	config = function()
		local colors = require "catppuccin.palettes.frappe"

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
			highlights = require("catppuccin.groups.integrations.bufferline").get({
				custom = {
					all = {
						buffer_visible = { fg = colors.text },
						buffer_selected = { fg = colors.text },
					}
				}
			})
		})
	end
}
