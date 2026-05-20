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
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            -- use lsp completions
            "hrsh7th/cmp-nvim-lsp",
            -- use words from current buffer
            "hrsh7th/cmp-buffer",
            -- display function signatures while filling out functions
            "hrsh7th/cmp-nvim-lsp-signature-help",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "nvim_lsp_signature_help"}
                })
            })
        end
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
