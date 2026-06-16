return {
    "nvim-treesitter/nvim-treesitter",
    "tree-sitter/tree-sitter-python",
    event = { "BufReadPre", "BufNewFile", },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
        ensure_installed = {
            "help",
            "lua",
            "vim",
            "markdown",
            "markdown_inline",
            "html",
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
