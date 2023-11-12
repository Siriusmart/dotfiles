return {
    "terrortylor/nvim-comment",
    config = function()
        require('nvim_comment').setup()

        local keymap = vim.keymap
        keymap.set("v", "<C-/>", "<cmd>'<,'>CommentToggle<CR>")
        keymap.set("n", "<C-/>", "<cmd>CommentToggle<CR>")
        keymap.set("i", "<C-/>", "<cmd>CommentToggle<CR>")
    end,
    keys = {
        "<C-/>", desc = "Comment toggle selection"
    }
}
