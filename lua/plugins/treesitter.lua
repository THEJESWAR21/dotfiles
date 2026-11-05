return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    -- event = { "BufReadPre", "BufNewFile", },
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.install({
            "lua",
            "vim",
            "markdown",
            "markdown_inline",
            "html",
            "css",
            "javascript",
            "typescript",
            "python",
            "json"

        })


        -- Enable Tree-sitter features
        vim.api.nvim_create_autocmd("FileType", {
            callback = function ()
                pcall(vim.treesitter.start)

                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

                vim.treesitter.stop()
            end,
        })


 end

}
