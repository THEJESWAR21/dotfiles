return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        require("lualine").setup{
            options = {
                icons_enabled = true,
                theme = 'powerline_dark',
                -- globalstatus = true ,
                always_show_tabline = true,
            },

        }

    end
}
