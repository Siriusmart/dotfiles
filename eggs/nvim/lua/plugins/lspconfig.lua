return {
    "neovim/nvim-lspconfig",
    config = function ()
        vim.lsp.enable("clangd")
        vim.lsp.enable("lua_ls")
        vim.lsp.enable("jdtls")
        vim.lsp.enable("rust_analyzer")
        vim.lsp.enable("ts_ls")
        vim.lsp.enable("gopls")
        vim.lsp.enable("texlab")
        vim.lsp.enable("pyright")
        vim.lsp.enable("jsonls")
        vim.lsp.enable("html")
        vim.lsp.enable("cssls")
        vim.lsp.config("texlab", {
            settings = {
                texlab = {
                    build = {
                        args = {
                            "-X",
                            "compile",
                            "%f",
                            "--synctex",
                            "--keep-logs",
                            "--keep-intermediates"
                        },
                        executable = "tectonic",
                        forwardSearchAfter = false,
                        onSave = true
                    },
                }
            }
        })
    end
}
