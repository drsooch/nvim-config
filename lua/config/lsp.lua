vim.lsp.enable("rust_analyzer")

-- Remove standard LSP keymappings
vim.keymap.del({"n", "v"}, "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "grx")

vim.keymap.set({"n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "apply code action"})
vim.keymap.set("n", "<leader>cd", vim.lsp.buf.type_definition, { desc = "go to type definition" })
vim.keymap.set("n", "<leader>cD", vim.lsp.buf.references, { desc = "show references" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set("n", "<leader>ci", vim.lsp.buf.implementation, { desc = "go to implementation" })
vim.keymap.set("n", "<leader>cj", vim.lsp.buf.document_symbol, { desc = "document symbol" })
vim.keymap.set("n","<leader>cf", vim.lsp.buf.format, { desc = "format" })


vim.lsp.codelens.enable(true)
vim.lsp.inlay_hint.enable(true)
