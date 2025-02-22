return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	config = function()
		require('fzf-lua').setup {
			{ "max-perf" },
			{
				files = {
					fd_opts   = [[--color = never --hidden --type f --type l --exclude .git --exclude node_modules --exclude dist --exclude build --exclude .svelte-kit]],
					no_ignore = true
				}
			}
		}
	end
}
