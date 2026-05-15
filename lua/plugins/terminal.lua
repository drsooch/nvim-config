return {
    {
        "akinsho/toggleterm.nvim", 
        lazy = false,
        keys = {
            {"<esc>", [[<C-\><C-n>]], mode = "t"},
            {"<C-h>", [[<Cmd>wincmd h<cr>]], mode = "t"},
            {"<C-j>", [[<Cmd>wincmd j<cr>]], mode = "t"},
            {"<C-k>", [[<Cmd>wincmd k<cr>]], mode = "t"},
            {"<C-l>", [[<Cmd>wincmd l<cr>]], mode = "t"},
            {"<C-w>", [[<C-\><C-n><C-w>]], mode = "t"}
        },
        opts = {
            open_mapping = "<leader>to"
        }
    }
}
