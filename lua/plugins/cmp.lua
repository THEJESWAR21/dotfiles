return {
 "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",       -- Buffer completions
    "hrsh7th/cmp-path",         -- Path completions
    'hrsh7th/cmp-path',
    -- Lua snippet
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },


  config = function()

      if vim.lsp.config then
          vim.lsp.config("*", {
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
          })
     local cmp = require("cmp")

    cmp.setup({
      -- Use Neovim's native snippet engine (0.11+ preferred way)
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
      
      -- Keybindings for completion window navigation
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete({ select = true }),
        -- ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept current selection
      }),
      
      -- Priority-ordered sources
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
    })     end

  end
}
