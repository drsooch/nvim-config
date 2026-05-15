return {
    -- TODO: Add other extensions to telescope
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        { "<leader><leader>", "<cmd>Telescope find_files<cr>", "n" }, 
        { "<leader>/", "<cmd>Telescope live_grep<cr>", "n" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", "n" },
    },
}
