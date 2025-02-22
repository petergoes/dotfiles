-- Move with Cmd-[hjkl] between panels
vim.api.nvim_set_keymap("n", "<c-k>", ":wincmd k<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-j>", ":wincmd j<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-h>", ":wincmd h<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", ":wincmd l<CR>", { noremap = true })

-- Keep selection after indentation changes
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- Finding things
vim.api.nvim_set_keymap("n", "<leader>f", ":FzfLua files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>F", ":FzfLua live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ss", ":FzfLua spell_suggest<CR>", { noremap = true })

-- Filebrowser
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true })

-- Split panes
vim.api.nvim_set_keymap("n", "<leader>\\", ":vsplit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>-", ":split<CR>", { noremap = true })

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
vim.api.nvim_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", { noremap = true })

-- Buffers
vim.api.nvim_set_keymap("n", "<leader>bf", ":FzfLua buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bb", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePick<CR>", { noremap = true })

-- Git
vim.api.nvim_set_keymap("n", "<leader>gl", ":LazyGit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", { noremap = true })
