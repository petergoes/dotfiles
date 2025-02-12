require("config.lazy")

vim.cmd [[
	colorscheme tokyonight
	language en_US
]]

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/COMMIT_EDITMSG",
	command = "norm! j"
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*/.git/PULLREQ_EDITMSG",
	command = "norm! jj"
})
