-- All config for the full lsp implementation

return {
	"williamboman/mason-lspconfig.nvim",

	event = "User FTNotDashboard",

	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		require("mason").setup()
		require("mason-lspconfig").setup {
			capabilities = capabilities,
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"eslint",
				"cssls",
				"html",
				"svelte",
				"stylelint_lsp",
				"marksman",
			},
		}

		-- See :help lspconfig-all for a list of all available lsp's
		require('lspconfig').lua_ls.setup {
			on_attach = function(_, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "lua vim.lsp.buf.format()",
				})
			end,
		}
		require('lspconfig').ts_ls.setup {}
		require('lspconfig').eslint.setup {
			on_attach = function(_, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = "EslintFixAll",
				})
			end,
		}
		require('lspconfig').cssls.setup {
			filetypes = { 'css', 'scss', 'less', 'postcss' },
			capabilities = capabilities,
		}
		require('lspconfig').html.setup {}
		require('lspconfig').svelte.setup {}
		require('lspconfig').stylelint_lsp.setup {
			filetypes = { 'css', 'scss', 'less', 'postcss', 'svelte' },
			settings = {
				stylelintplus = {
					autoFixOnSave = true,
					autoFixOnFormat = true,
					-- -- other settings...
				}
			}
		}
		require('lspconfig').marksman.setup {}
	end
}
