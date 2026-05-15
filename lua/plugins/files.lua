return {
    { "nvim-tree/nvim-web-devicons" },
    { 
        "nvim-tree/nvim-tree.lua", 
        keys = {
            { "<leader>ft", "<cmd>NvimTreeToggle<cr>", mode = "n" },
        },
        opts = {
            sync_root_with_cwd = true,
            filters = {
                custom = {
                    "^.git$"
                }
            }
        }
    },
}
