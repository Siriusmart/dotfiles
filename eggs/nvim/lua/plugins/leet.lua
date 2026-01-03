return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    cmd = "Leet",
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
        require("leetcode").setup({
            -- lang = "typescript",
            lang = "c",
        })
    end
}
