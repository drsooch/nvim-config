-- Remove standard LSP keymappings
vim.keymap.del({"n", "v"}, "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "grt")
vim.keymap.del("n", "grx")

-- Apply Code Action is handled by Telescope plugin for now
vim.keymap.set({"n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "apply code action"})

-- Go to Type Def is handled by Telescope plugin for now
-- vim.keymap.set("n", "<leader>cd", vim.lsp.buf.type_definition, { desc = "go to type definition" })

-- Show References is handled by Telescope plugin for now
-- vim.keymap.set("n", "<leader>cD", vim.lsp.buf.references, { desc = "show references" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "rename" })

-- Go To Implentation is handled by Telescope plugin for now
-- vim.keymap.set("n", "<leader>ci", vim.lsp.buf.implementation, { desc = "go to implementation" })

-- Show Document Symbol is handled by Telescope plugin for now
-- vim.keymap.set("n", "<leader>cj", vim.lsp.buf.document_symbol, { desc = "document symbol" })
vim.keymap.set("n","<leader>cf", vim.lsp.buf.format, { desc = "format" })
--
-- LSP Diagnostic Hover
vim.keymap.set("n", "<leader>cX", vim.diagnostic.open_float, { desc = "diagnostic hover"})

vim.lsp.codelens.enable(true)
vim.lsp.inlay_hint.enable(true)
