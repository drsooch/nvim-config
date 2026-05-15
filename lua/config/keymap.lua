-- Keymappings
-- 
-- Keymapping modes:
-- "n" = normal
-- "i" = insert
-- "v" = visual, selection
-- "x" = visual
-- "s" = selection
-- "c" = command
-- "o" = operator
-- "t" = terminal
-- "!" = insert, command
-- ""  = normal, visual, selection, operator

-- turn off highlighting
vim.keymap.set("", "<C-b>", ":noh<cr>")

-- Window movement
vim.keymap.set("", "<C-j>", "<C-W>j")
vim.keymap.set("", "<C-k>", "<C-W>k")
vim.keymap.set("", "<C-h>", "<C-W>h")
vim.keymap.set("", "<C-l>", "<C-W>l")

-- first non-blank
vim.keymap.set("", "0", "^")

