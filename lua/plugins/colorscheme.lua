return {
    "morhetz/gruvbox", -- "folke/tokyonight.nvim",

    -- "catppuccin/nvim",
    -- name = "catppuccin",
    lazy = false,
    priority = 1000,
    terminal_colors = true,
    opts = {
        transparent = true,
    },
    config = function()
        -- Catppuccin Settings -- 
        
        -- require("catppuccin").setup({
        --     flavour = "mocha",
        --     transparent_background = true,
        --     background = {
        --         light = "latte",
        --         dark = "mocha",
        --     },
        -- })
        --
        -- vim.cmd.colorscheme ("catppuccin")

        -- Tokyonight Settings -- 
        -- require("tokyonight").setup({
        --     transparent_background= true,
        --     vim.cmd.colorscheme("tokyonight-night")
        -- })


    -- Grvubox Settings -- 
	vim.g.gruvbox_termcolors = 256
	vim.g.gruvbox_contrast_dark = 'hard'
	vim.g.gruvbox_italic = 1
    vim.o.background = "dark"
	vim.cmd("colorscheme gruvbox")
    vim.g.gruvbox_transparent_bg = 1

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

    end, 


}

