return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				globalstatus = true,
				disabled_filetypes = { 'dashboard', 'NvimTree', 'lazygit' },
			},
			sections = {
				lualine_x = { 'filetype' },
				-- lualine_x = {
				-- 	{
				-- 		require("noice").api.statusline.mode.get,
				-- 		cond = require("noice").api.statusline.mode.has,
				-- 		color = { fg = "#ff9e64" },
				-- 	},
				-- 	{
				-- 		require("noice").api.status.command.get,
				-- 		cond = require("noice").api.status.command.has,
				-- 		color = { fg = "#ff9e64" },
				-- 	},
				-- },
				-- lualine_a = {
				--   {
				-- 	'buffers',
				--   }
				-- }
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
