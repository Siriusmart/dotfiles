return {
    "neovim/nvim-lspconfig",
    config = function ()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({})
        lspconfig.lua_ls.setup({})
        lspconfig.jdtls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.ts_ls.setup({})
        lspconfig.gopls.setup({})
    end
}
