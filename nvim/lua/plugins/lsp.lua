-- All config for the full lsp implementation

return {
	"williamboman/mason-lspconfig.nvim",

	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function ()
		require("mason").setup()
		require("mason-lspconfig").setup {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"svelte",
				"stylelint_lsp",
			},
		}

		-- See :help lspconfig-all for a list of all available lsp's
		require('lspconfig').lua_ls.setup {}
		require('lspconfig').ts_ls.setup {}
		require('lspconfig').svelte.setup {}
		require('lspconfig').stylelint_lsp.setup {}


	end
}
