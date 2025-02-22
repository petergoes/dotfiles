require('options')
require('keymaps')
require('misc')

require("config.lazy")

vim.cmd [[
	colorscheme onedark
]]

vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/COMMIT_EDITMSG",
	command = "norm! j"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/PULLREQ_EDITMSG",
	command = "norm! jj"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*.md",
	command = "setlocal spell spelllang=en_gb"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/COMMIT_EDITMSG",
	command = "setlocal spell spelllang=en_gb"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/PULLREQ_EDITMSG",
	command = "setlocal spell spelllang=en_gb"
})

vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = 'Black', bg = 'Black' })
