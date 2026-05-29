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
        },
        init = function()
            -- enable saving the state of plugins in the session
            -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
            vim.opt.sessionoptions:append("globals")
        end,
    }
}
