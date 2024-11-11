return {
    "williamboman/mason-lspconfig.nvim",

    config = function()
        require("mason-lspconfig").setup({

            ensure_installed = {
                "bashls", "clangd", "cssls", "elixirls",
                "html", "hls", "lua_ls", "pylyzer", "ts_ls"
            }
        })
    end
}
