return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    cmd = { 
        "NvimTreeClipboard",
        "NvimTreeClose",
        "NvimTreeCollapse",
        "NvimTreeCollapseKeepBuffers",
        "NvimTreeFindFile",
        "NvimTreeFindFileToggle",
        "NvimTreeFocus",
        "NvimTreeOpen",
        "NvimTreeRefresh",
    },
    keys = {
        "<leader>f", desc = "Open file explorer",
    },
    config = function()
        require("nvim-tree").setup {}

        -- Set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>f", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    end
}
