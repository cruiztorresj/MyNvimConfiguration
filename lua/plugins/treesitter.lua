local M = {
    "nvim-treesitter/nvim-treesitter",

    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,

    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "asm", "awk", "bash", "c", "cmake", "cpp", "css",
                "csv", "eex", "elixir", "elm", "haskell",
                "heex", "html", "java", "javascript", "json",
                "lua", "make", "markdown", "mermaid", "php", "prolog", "python",
                "racket", "regex", "ruby", "scheme", "sql", "vim",
                "vimdoc", "xml", "yaml"
            },

            highlight = { enable = true },

            indent = { enable = true },

            autotag = {

                enable = true
            }
        })
    end,
}

return { M }
