return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',

	opts = function()
		local branch = vim.fn.system("git branch --show-current 2> /dev/null | tr -d '\n'")

		local logo = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			vim.loop.cwd(),
			branch,
			[[                                                                       ]],
		}

		return {
			theme  = 'hyper',
			hide   = {
				statusline = false
			},
			config = {
				header   = logo,
				packages = { enable = false },
				mru      = { cwd_only = true },
				project  = { enable = false },
				shortcut = {
					{
						desc   = '󰊳 Update',
						group  = '@property',
						action = 'Lazy update',
						key    = 'u'
					},
					{
						icon    = ' ',
						icon_hl = '@variable',
						desc    = 'Files',
						group   = 'Label',
						action  = 'FzfLua files',
						key     = 'f',
					},
				},
			}
		}
	end,

	dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
