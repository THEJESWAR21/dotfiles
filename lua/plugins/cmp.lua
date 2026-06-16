return {
 "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",       -- Buffer completions
    "hrsh7th/cmp-path",         -- Path completions
    'hrsh7th/cmp-path',
    -- Lua snippet
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
  },


  config = function()

      if vim.lsp.config then
          vim.lsp.config("*", {
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
          })

     local luasnip = require("luasnip")
     require("luasnip.loaders.from_vscode").lazy_load()

     local cmp = require("cmp")

    cmp.setup({
      -- Use Neovim's native snippet engine (0.11+ preferred way)
      snippet = {
        expand = function(args)
          -- vim.snippet.expand(args.body)
          luasnip.lsp_expand(args.body)
        end,
      },
      
      -- Keybindings for completion window navigation
      mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<tab>"] = cmp.mapping.confirm({ select = true }), -- Accept current selection
        ["<C-Space>"] = cmp.mapping.complete(),

        
      }),

      experimental = {
            ghost_text  = true,
      },
      
      -- Priority-ordered sources
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })     end

  end
}
