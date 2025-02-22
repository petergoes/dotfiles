return {
	"ibhagwan/fzf-lua",
	cmd = "FzfLua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		{ "max-perf" },
		{
			files = {
				fd_opts   =
				[[--color = never --hidden --type f --type l --exclude .git --exclude node_modules --exclude dist --exclude build --exclude .svelte-kit]],
				no_ignore = true
			}
		}
	},
}
