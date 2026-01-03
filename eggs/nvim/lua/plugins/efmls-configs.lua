return {
  "creativenull/efmls-configs-nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function ()
      local eslint       = require("efmls-configs.linters.eslint_d")
      local stylelint    = require("efmls-configs.linters.stylelint")
      local clang_format = require("efmls-configs.formatters.clang_format")
      local prettier     = require("efmls-configs.formatters.prettier_d")
      local shfmt        = require("efmls-configs.formatters.shfmt")

      local languages = {
          bash = { shfmt },
          sh = { shfmt },
          zsh = { shfmt },

          c = { clang_format },
          cpp = { clang_format },

          html = { prettier },

          css = { prettier },
          scss = { prettier },
          less = { prettier },
          sass = { prettier },

          javascript = { prettier },
          javascriptreact = { prettier },
          typescript = { prettier },
          typescriptreact = { prettier },

          vue = { prettier },

          json = { prettier },
          jsonc = { prettier },
          graphql = { prettier },
          yaml = { prettier },

          python = {
              require("efmls-configs.linters.ruff"),
              require("efmls-configs.formatters.ruff"),
              require("efmls-configs.formatters.ruff_sort"),
          },

          -- You can also define your own commands:
          -- python = {
              --   { formatCommand = "black --quiet -", formatStdin = true },
              -- },

              rust = { require("efmls-configs.formatters.rustfmt") },
          }

          vim.lsp.enable("efm")
          vim.lsp.config("efm", {
              init_options = {
                  documentFormatting = true,
              },
              filetypes = vim.tbl_keys(languages),
              single_file_support = true,
              settings = {
                  rootMarkers = { ".git/" },
                  languages = languages,
              },
          })
      end
  }

