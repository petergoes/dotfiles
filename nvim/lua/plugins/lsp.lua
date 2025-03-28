-- All config for the full lsp implementation

return {
	"williamboman/mason-lspconfig.nvim",

	event = "User FTNotDashboard",

	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function()
		local util = require 'lspconfig.util'
		local function migrate_to_svelte_5()
			local params = {
				command = 'migrate_to_svelte_5',
				arguments = { vim.uri_from_bufnr(0) },
			}

			local clients = util.get_lsp_clients({
				bufnr = vim.api.nvim_get_current_buf(),
				name = 'svelte',
			})
			for _, client in ipairs(clients) do
				client.request('workspace/executeCommand', params, nil, 0)
			end
		end

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		require("mason").setup({
			ui = {
				border = 'rounded'
			}
		})

		require("mason-lspconfig").setup {
			capabilities = capabilities,
			ensure_installed = {
				"astro",
				"lua_ls",
				"ts_ls",
				"eslint",
				"cssls",
				"html",
				"svelte",
				"stylelint_lsp",
				"marksman",
				"jsonls",
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
		require('lspconfig').svelte.setup {
			commands = {
				MigrateToSvelte5 = {
					migrate_to_svelte_5,
					description = 'Migrate Component to Svelte 5 Syntax',
				},
			},
		}
		require('lspconfig').astro.setup {
			capabilities = capabilities,
		}
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
		require('lspconfig').jsonls.setup {}

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
			vim.lsp.handlers.hover, {
				-- Use a sharp border with `FloatBorder` highlights
				border = "single",
				-- add the title in hover float window
				title = "hover"
			}
		)
	end
}
