-- required before loading Lazy Plugin Manager
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.settings")
require("config.keymap")
require("config.lsp")

-- tree-sitter cli must be on PATH
require("nvim-treesitter").install {
    "rust",
    "haskell",
    "python",
    "lua",
    "ocaml",
    "go",
}
