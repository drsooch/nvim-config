return {
    {
        "coffebar/neovim-project",
        dependencies = {
            "shatur/neovim-session-manager"
        },
        opts = {
            lazy = false,
            picker = {
                type = "telescope"
            },
            projects = {
                "~/code/haskell/*",
                "~/code/rust/*",
                "~/code/ocaml/*",
                "~/code/go/*",
            }
        }
    }
}
