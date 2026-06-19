vim.treesitter.start()
vim.lsp.config("hls", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    filetypes = { "haskell", "lhaskell", "cabal" },
    settings = {
        haskell = {
            formattingProvider = "stylish-haskell"
        }
    }
})
vim.lsp.enable("hls")
