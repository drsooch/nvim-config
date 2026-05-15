return {
    {
        "coffebar/neovim-project",
        dependencies = {
            "shatur/neovim-session-manager"
        },
        keys = {
            { "<leader>p", "<cmd>NeovimProjectDiscover<cr>", mode = "n" }
        },
        opts = {
            lazy = false,
            picker = {
                type = "telescope"
            },
            projects = {
                "~/.config/nvim",
                "~/code/haskell/*",
                "~/code/rust/*",
                "~/code/ocaml/*",
                "~/code/go/*",
            }
        }
    }
}
