vim.treesitter.start()
vim.lsp.config("ty", {
    capabilities = require("cmp_nvim_lsp").default_capabilities()
})


vim.lsp.enable("ruff")
vim.lsp.enable("ty")
