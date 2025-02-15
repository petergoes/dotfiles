return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup()
        end
    },

    { "xiyaowong/transparent.nvim",  lazy = false },
    { "folke/which-key.nvim",        lazy = true },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "folke/tokyonight.nvim",       lazy = false, priority = 1000 }

}
