return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    config = function (plugin)
        -- forces markview to be loaded before anything else
        vim.opt.rtp:prepend(plugin.dir)

        local entries = require("markview.symbols").entries
        entries.land = "∧"
        entries.lor = "∨"
        entries.implies = "⇒"
        entries.iff = "⇔"
        entries.emptyset = "∅"

        require("markview").setup({
            preview = {
                icon_provider = "devicons", -- "mini" or "devicons"
                hybrid_modes = { "n" },
                debounce = 0,

                linewise_hybrid_mode = true,
            },
            html = { enable = false },
            latex = { enable = true },
            typst = { enable = false },
            yaml = { enable = false }
        });
    end
}
