return {
	'nvim-lualine/lualine.nvim',
	event = "User FTNotDashboard",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				theme = "catppuccin",
				icons_enabled = true,
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				globalstatus = true,
				disabled_filetypes = { 'dashboard', 'NvimTree', 'lazygit' },
			},
			sections = {
				lualine_x = { 'filetype' },
				lualine_c = {
					{
						'filename',
						file_status = true, -- displays file status (readonly status, modified status)
						path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
					}
				}
			}
		}
	end
}
