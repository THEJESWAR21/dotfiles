return { "neovim/nvim-lspconfig",
    opt = {},
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "mason-org/mason-lspconfig.nvim",
   } ,


    config = function ()
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "pyrefly"
            }
        })

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"},
                    },
                },
            },
        })

        vim.lsp.enable('lua_ls')
        vim.lsp.enable('pyrefly')
        

        vim.diagnostic.config({
            signs = false, -- stops lsps from showing signs in a sidebar
            underline = false,
            vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF0000" }),
            virtual_text = {
                severity = {
                    min = vim.diagnostic.severity.WARN,
                },
            },
        })

        vim.keymap.set("n", "]q", ":cnext<CR>")
        vim.keymap.set("n", "[q", ":cprev<CR>")
    
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                local client = vim.lsp.get_client_by_id(ev.data.client_id)

                if client then
                    client.server_capabilities.semanticTokensProvider = nil
                end

                local opts = { buffer = ev.buf }

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
                vim.keymap.set("n", "gi", function () vim.lsp.buf.implementation() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
                vim.keymap.set("i", ",s", function() vim.lsp.buf.signature_help() end, opts)

                vim.keymap.set("n", ",e", function() vim.diagnostic.open_float() end, opts)
                vim.keymap.set("n", "ge", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "gE", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", ",q", function() vim.diagnostic.setloclist() end, opts)


                
            end,
        })

    end
}
