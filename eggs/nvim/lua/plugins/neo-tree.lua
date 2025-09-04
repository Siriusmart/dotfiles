return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function ()
        vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'NONE' })

        vim.keymap.set("n", "<leader>t", function()
            require("neo-tree.command").execute({
                toggle = true,
                source = "filesystem",
                position = "left",
            })
        end)

        require("neo-tree").setup({
            filesystem = {
                window = {
                    mappings = {
                        ["y"] = "system_open",
                        ["e"] = "noop",
                        ["i"] = "noop",
                        ["n"] = "navigate_up",
                        ["o"] = "set_root",

                        ["oc"] = "noop",
                        ["od"] = "noop",
                        ["og"] = "noop",
                        ["om"] = "noop",
                        ["on"] = "noop",
                        ["os"] = "noop",
                        ["ot"] = "noop",
                        ["yc"] = "order_by_created",
                        ["yd"] = "order_by_diagnostics",
                        ["yg"] = "order_by_git_status",
                        ["ym"] = "order_by_modified",
                        ["yn"] = "order_by_name",
                        ["ys"] = "order_by_size",
                        ["yt"] = "order_by_type",
                    },
                },
            },
            commands = {
                system_open = function(state)
                    local node = state.tree:get_node()
                    local path = node:get_id()
                    vim.fn.jobstart({ "xdg-open", path }, { detach = true })
                end,
            },
        })
    end
}
