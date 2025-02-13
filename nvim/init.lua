require("config.lazy")

vim.cmd [[
	colorscheme tokyonight
]]

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/COMMIT_EDITMSG",
	command = "norm! j"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/PULLREQ_EDITMSG",
	command = "norm! jj"
})
