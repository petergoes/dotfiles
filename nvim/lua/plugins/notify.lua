return {
	"rcarriga/nvim-notify",
	lazy = true,
	config = function()
		require('notify').setup {
			background_colour = "#000000",
		}
	end
}
