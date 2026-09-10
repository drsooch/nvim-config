-- this replaces cmp.config.compare.kind
local lsp_kind_comparator = function(entry1, entry2)
    local lsp_types = require("cmp.types").lsp
    local entry1_kind = entry1:get_kind()
    local entry2_kind = entry2:get_kind()
    local is_entry1_snippet = entry1_kind == lsp_types.CompletionItemKind.Snippet
    local is_entry2_snippet = entry2_kind == lsp_types.CompletionItemKind.Snippet

    if entry1_kind == entry2_kind then
        return nil
    end

    -- push snippets all the way down
    if is_entry1_snippet then
        return false
    elseif is_entry2_snippet then
        return true
    end

    -- sort by LSP Kind Enumeration definition
    return (entry1_kind - entry2_kind) < 0
end

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
            -- display function signatures while filling out functions
            "hrsh7th/cmp-nvim-lsp-signature-help",
            -- use words from current buffer
            "hrsh7th/cmp-buffer",
            -- use paths of files and folders
            "hrsh7th/cmp-path"
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
                    -- {
                        { name = "nvim_lsp" },
                        { name = "nvim_lsp_signature_help" },
                    -- },
                    -- {
                        { name = "buffer" },
                        { name = "path" },
                    -- }
                }),
                sorting = {
                    priority_weight = 2,
                    -- comparators run in order until a non-nil result is given
                    comparators = {
                        -- cya later Snippets...
                        lsp_kind_comparator,

                        -- exact matches go next
                        cmp.config.compare.exact,

                        -- highest scores go next - essentially # of matched characters
                        cmp.config.compare.score,

                        -- then words closer to cursor
                        cmp.config.compare.locality,

                        -- no idea on this one, sortText is a field on LSP CompletionItem
                        -- it's used for this exact scenario but have 0 idea how its generated.
                        cmp.config.compare.sort_text,

                        -- short -> long
                        cmp.config.compare.length,

                        -- based on internal Entry.ID value
                        cmp.config.compare.order,

                    }
                }
            })

            cmp.setup.cmdline('/', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" }
                }
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
