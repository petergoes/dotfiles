require('options')
require('keymaps')
require('misc')

require("config.lazy")

vim.cmd [[
	colorscheme onedark
]]

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*/.git/COMMIT_EDITMSG",
    command = "norm! j"
})

vim.api.nvim_create_autocmd("BufRead", {
    pattern = "*/.git/PULLREQ_EDITMSG",
    command = "norm! jj"
})
