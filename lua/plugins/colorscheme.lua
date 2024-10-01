return {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    terminal_colors = true,
    config = function()
        -- Configurations
        vim.g.grvubox_termcolors = 256
        vim.g.gruvbox_contrast_dark = 'hard'
        vim.g.gruvbox_italic = 1

        -- Apply the Gruvbox colorscheme
        vim.cmd("colorscheme gruvbox")
    end, 
}

-- " There are also colorschemes for the different styles.
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon

