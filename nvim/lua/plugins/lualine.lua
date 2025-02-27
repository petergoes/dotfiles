return {
	'nvim-lualine/lualine.nvim',
	event = "User FTNotDashboard",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local nord = require 'lualine.themes.nord'
		nord.normal.b.bg = '#4C566A'
		nord.normal.c.bg = '#2E3440'

		require('lualine').setup {
			options = {
				theme = nord,
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

		vim.api.nvim_set_hl(0, 'lualine_a_normal', { fg = '#3B4252', bg = '#88C0D0', bold = true })
	end
}
