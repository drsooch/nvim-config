return {
    "akinsho/bufferline.nvim",
    opts = {
        options = {
            always_show_bufferline = false,
            hover = {
                enabled = true,
                delay = 200,
                reveal = { "close" }
            },
            diagnostics = "nvim_lsp",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    separator = true
                }
            }
        }
    }
}
