return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local lspconfig = require("lspconfig")

        lspconfig.bashls.setup({

            capabilities = capabilities
        })

        lspconfig.cssls.setup({

            capabilities = capabilities
        })

        lspconfig.clangd.setup({

            capabilities = capabilities
        })

        lspconfig.elixirls.setup({


            cmd = {"/home/calebjosue/LSPs/elixir-ls/scripts/language_server.sh" };
        })
        lspconfig.html.setup({

            capabilities = capabilities
        })

        lspconfig.hls.setup({})

        lspconfig.lua_ls.setup({

            capabilities = capabilities
        })

        lspconfig.jdtls.setup({})

        lspconfig.pylyzer.setup({

            capabilities = capabilities
        })

        lspconfig.tsserver.setup({

            capabilities = capabilities
        })

        vim.api.nvim_create_autocmd('LspAttach', {

            group = vim.api.nvim_create_augroup('UserLspConfig', {}),

            callback = function(ev)

                -- Enable completion triggered by <c-x><c-o>
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
                vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

            end
        })
    end
}
