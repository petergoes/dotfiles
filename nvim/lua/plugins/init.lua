return {
	{
		"nvim-tree/nvim-tree.lua",
		cmd = "NvimTreeFindFileToggle",
		opts = {
			live_filter = {
				always_show_folders = false
			},
			actions = {
				expand_all = {
					exclude = { ".git" }
				}
			}
		},
	},

	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "navarasu/onedark.nvim",       lazy = false, priority = 1000 },

}
