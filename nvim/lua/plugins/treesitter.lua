return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "lua",
                    "markdown",
                    "gitcommit",
                    "gitignore",
                    "git_config",
                    "git_rebase",
                    "dockerfile",
                    "editorconfig",
                    "diff",
                    "json",
                    "bash",

                    "html",
                    "css",
                    "javascript",
                    "typescript",
                    "jsdoc",

                    "astro",
                    "svelte",
                    "vue",
                    "php",
                },
				highlight = { enable = true },
            })
        end
    }
}

