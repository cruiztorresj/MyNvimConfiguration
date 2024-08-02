local M = {
    "nvim-treesitter/nvim-treesitter",

    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,

    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { 
                "asm", "awk", "bash", "c", "clojure", "cmake", "commonlisp", "cpp", "css",
                "csv", "cuda", "eex", "elixir", "elm", "erlang", "go", "hack", "haskell",
                "heex", "html", "java", "javascript", "json", "julia", "kotlin", 
                "lua", "make", "markdown", "mermaid", "nim", "ocaml", "php", "prolog", "python",
                "racket", "regex", "ruby", "rust", "scala", "scheme", "sql", "vim",
                "vimdoc", "xml", "yaml", "zig"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}

return { M }