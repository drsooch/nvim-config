return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "┊"
            },
        },
    },
    {
        "cappyzawa/trim.nvim",
        lazy = false,
        opts = {
            highlight = true,
        }
    }
}
