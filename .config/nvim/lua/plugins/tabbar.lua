require("config.vars")

vim.api.nvim_create_autocmd("ColorScheme", {
    once = true,
    callback = vim.schedule_wrap(function()
        vim.api.nvim_set_hl(0, "BufferCurrent", { fg = "orange", bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentADDED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentCHANGED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentDELETED", { bg = "none" })

        vim.api.nvim_set_hl(0, "BufferCurrentHINT", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentIcon", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentINFO", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = bg })
        vim.api.nvim_set_hl(0, "BufferCurrentNumber", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentSignRight", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferCurrentWARN", { bg = "none" })

        vim.api.nvim_set_hl(0, "BufferInactive", { fg = "gray", bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveADDED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveCHANGED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveDELETED", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveERROR", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveHINT", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveIcon", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveIndex", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveINFO", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = bg })
        vim.api.nvim_set_hl(0, "BufferInactiveNumber", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveSignRight", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveTarget", { bg = "none" })
        vim.api.nvim_set_hl(0, "BufferInactiveWARN", { bg = "none" })

        -- I have no idea how to use nvim_set_hl for this
        vim.cmd("hi BufferTabpageFill ctermbg=black")
    end),
    group = vim.api.nvim_create_augroup("customcolorscheme", {}),
})

return {
        "romgrk/barbar.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        event = "BufAdd",
        init = function()
            vim.g.barbar_auto_setup = false
        end,
        opts = {
            animation = false,
            auto_hide = true,
            tabpages = false,
            clickable = true,
            -- Excludes buffers from the tabline
            exclude_ft = {},
            exclude_name = {},
            icons = {
                filetype = { enabled = true },
                button = "",
                modified = {
                    button = "●",
                },
                inactive = {
                    separator = {
                        left = "",
                    },
                },
                separator = {
                    left = "",
                },
            },
        }
    }
