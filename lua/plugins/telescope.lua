return {
    -- TODO: Add other extensions to telescope
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        { "<leader><leader>", "<cmd>Telescope find_files<cr>",      "n" },
        { "<leader>/",        "<cmd>Telescope live_grep<cr>",       "n" },
        { "<leader>bi",       "<cmd>Telescope buffers<cr>",         "n" },
        -- { "<leader>ca",       "<cmd>Telescope lsp_code_action<cr>", "n" },
        { "<leader>cd",       "<cmd>Telescope lsp_definitions<cr>", "n" },
        { "<leader>cD",       "<cmd>Telescope lsp_references theme=dropdown<cr>", "n" },
        { "<leader>ci",       "<cmd>Telescope lsp_implementations<cr>", "n" },
        { "<leader>cj",       "<cmd>Telescope lsp_document_symbols<cr>", "n" },
        { "<leader>cx",       "<cmd>Telescope diagnostics<cr>",     "n" },
        { "<leader>tt",        "<cmd>Telescope<cr>",                 "n" },
    },
}
