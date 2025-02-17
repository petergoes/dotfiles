-- Move with Cmd-[hjkl] between panels
vim.api.nvim_set_keymap("n", "<c-k>", ":wincmd k<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-j>", ":wincmd j<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-h>", ":wincmd h<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", ":wincmd l<CR>", { noremap = true })


-- Keep selection after indentation changes
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- Find files
vim.api.nvim_set_keymap("n", "<leader>f", ":FzfLua files<CR>", { noremap = true })

-- Filebrowser
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true })

-- Split panes
vim.api.nvim_set_keymap("n", "<leader>|", ":vsplit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>_", ":split<CR>", { noremap = true })

-- Dismiss notifications
vim.keymap.set("n", "<Esc>",
	function()
		require("notify").dismiss({ pending = true, silent = true })
	end,
	{ desc = "dismiss notify popup and clear hlsearch" }
)

-- LSP stuff
vim.api.nvim_set_keymap("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.format()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })

