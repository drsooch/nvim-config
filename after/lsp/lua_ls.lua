return {
    -- Pulled from https://github.com/neovim/nvim-lspconfig/blob/master/lsp/lua_ls.lua
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if
                path ~= vim.fn.stdpath("config")
                -- and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
            then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using (most
                -- likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- tell the language server how to find lua modules same way as neovim
                -- (see `:h lua-module-load`)
                path = {
                    'lua/?.lua',
                    'lua/?/init.lua',
                },
            },
            -- make the server aware of neovim runtime files
            workspace = {
                checkthirdparty = false,
                library = {
                  vim.env.vimruntime,
                  -- for lsp settings type annotations: https://github.com/neovim/nvim-lspconfig#lsp-settings-type-annotations
                  vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
                },
                -- or pull in all of 'runtimepath'.
                -- note: this is a lot slower and will cause issues when working on
                -- your own configuration.
                -- see https://github.com/neovim/nvim-lspconfig/issues/3189
                -- library = vim.api.nvim_get_runtime_file('', true),
            },
        })
    end,
    settings = {
        Lua = {
            hint = { enable = true, semicolon = "Disable" }
        },
    },
}
