vim.lsp.enable("rust_analyzer")

-- Remove standard LSP keymappings
vim.keymap.del({"n", "v"}, "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "grx")

vim.keymap.set({"n", "v" }, "<leader>ta", vim.lsp.buf.code_action, { buf = 0 })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.type_definition, { buf = 0 })
vim.keymap.set("n", "<leader>cD", vim.lsp.buf.references, { buf = 0 })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buf = 0 })
vim.keymap.set("n", "<leader>ci", vim.lsp.buf.implementation, { buf = 0 })
vim.keymap.set("n", "<leader>cj", vim.lsp.buf.document_symbol, { buf = 0 })
vim.keymap.set("n","<leader>cf", vim.lsp.buf.format, { buf = 0 })


vim.lsp.codelens.enable(true)
vim.lsp.inlay_hint.enable(true)
