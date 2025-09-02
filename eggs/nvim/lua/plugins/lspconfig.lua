return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({})
        lspconfig.lua_ls.setup({})

        vim.diagnostic.enable = true
        --[[
        vim.diagnostic.config({
            virtual_lines = true,
        })
        --]]
    end
}
