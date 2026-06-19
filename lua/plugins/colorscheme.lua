return {
    -- "folke/tokyonight.nvim",
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    terminal_colors = true,
    config = function()
        -- Configurations
	vim.g.gruvbox_termcolors = 256
	vim.g.gruvbox_contrast_dark = 'hard'
	vim.g.gruvbox_italic = 1
    -- vim.cmd("colorscheme tokyonight-night")
	vim.cmd("colorscheme gruvbox")
    end, 

}

