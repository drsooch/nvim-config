return {
    {
        "mason-org/mason.nvim",
        lazy = false,
        keys = {
            { "<C-p>m", "<cmd>Mason<cr>", mode = "n" }
        },
        opts = {
            PATH = "append"
        }
    },
    {
        "neovim/nvim-lspconfig",
    },
    {
        "https://github.com/nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate"
    },
    {
        "https://github.com/MeanderingProgrammer/render-markdown.nvim",
        opts = {
            completions = {
                lsp = {
                    enabled = true
                }
            },
            pipe_table = {
                preset = "round"
            },
        }
    }
}
