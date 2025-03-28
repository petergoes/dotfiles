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
}
