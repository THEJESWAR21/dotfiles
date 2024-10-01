return{
    "itchyny/lightline.vim",
    -- in your lazy.nvim config
    require('lazy').setup({
        {
            'itchyny/lightline.vim',
            config = function()
                vim.g.lightline = { colorscheme = 'wombat' }
            end
        }
    })
}
