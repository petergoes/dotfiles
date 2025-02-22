return {
	{
		'echasnovski/mini.nvim',
		event = "User FTNotDashboard",
		version = false,
		config = function()
			require('mini.ai').setup()
			require('mini.pairs').setup()
			require('mini.align').setup()
			require('mini.surround').setup()
		end
	},
}
