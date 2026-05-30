return {
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                theme = "gruvbox"
            },
            sections = {
                lualine_x = { "filetype", "lsp_status" }
            }
        }
    }
}
