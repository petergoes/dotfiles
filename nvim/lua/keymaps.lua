-- Move with Cmd-[hjkl] between panels
vim.api.nvim_set_keymap("n", "<c-k>", ":wincmd k<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-j>", ":wincmd j<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-h>", ":wincmd h<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", ":wincmd l<CR>", { noremap = true })

-- Keep selection after indentation changes
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })

-- Finding things
vim.api.nvim_set_keymap("n", "<leader>f", ":FzfLua files<CR>", { noremap = true, desc = "Find files" })
vim.api.nvim_set_keymap("n", "<leader>F", ":FzfLua live_grep<CR>", { noremap = true, desc = "Find in project" })
vim.api.nvim_set_keymap("n", "<leader>ss", ":FzfLua spell_suggest<CR>",
	{ noremap = true, desc = "Open Spell suggestions" })
vim.api.nvim_set_keymap("n", "<leader>st", ":lua Snacks.picker.todo_comments()<CR>",
	{ noremap = true, desc = "Search for @TODO, @FIX, @FIXME comments" })

-- Filebrowser
-- Toggle the file browser. Use this instead of NvimTreeFindFileToggle because
-- when splits are open, and the the filetree is open and the cursor is outside
-- the tree, you can still focus it instead of closing
vim.keymap.set("n",
	"<leader>e",
	function()
		if (vim.bo.filetype == 'NvimTree') then
			vim.cmd [[ :NvimTreeClose ]]
		else
			vim.cmd [[ :NvimTreeFindFile ]]
		end
	end,
	{ noremap = true, desc = "Toggle File browser" }
)

-- Split panes
vim.api.nvim_set_keymap("n", "<leader>\\", ":vsplit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>-", ":split<CR>", { noremap = true })

-- Dismiss notifications
vim.keymap.set("n", "<Esc>",
	":lua Snacks.notifier.hide()<CR>",
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
vim.api.nvim_set_keymap("n", "<leader>bq", ":lua Snacks.bufdelete()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-]>", ":BufferLineCycleNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-[>", ":BufferLineCyclePrev<CR>", { noremap = true })

-- Git
vim.api.nvim_set_keymap("n", "<leader>gl", ":LazyGit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", { noremap = true })
