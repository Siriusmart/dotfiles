return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        "<C-l>", desc = "Telescope live grep",
        "<CA-l>", desc = "Telescope find files",
    },
    config = function()
        local keymap = vim.keymap
        keymap.set("", "<C-L>", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
        keymap.set("", "<CA-L>", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
    end
}
