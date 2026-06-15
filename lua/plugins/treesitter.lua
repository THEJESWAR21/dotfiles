return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile", },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
	require("nvim-treesitter").setup({
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"markdown",
		"markdown_inline",
		"css",
		"javascript",
		"typescript",
		"python",
	},
	ignore_install = {},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
 end

}
