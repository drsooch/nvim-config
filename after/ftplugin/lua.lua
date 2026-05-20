vim.treesitter.start()
vim.lsp.config("lua_ls", {
    capabilities = require("cmp_nvim_lsp").default_capabilities()
})
vim.lsp.enable("lua_ls")
