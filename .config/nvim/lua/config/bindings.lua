local keymap = vim.keymap

keymap.set("", "<C-S>", "<cmd>w<CR>", { desc = "Save current buffer" })
keymap.set("", "<C-Q>", "<cmd>q<CR>", { desc = "Quit current buffer" })
keymap.set("", "<S-q>", "<cmd>q!<CR>", { desc = "Force quit current buffer" })
keymap.set("n", "qq", "<cmd>BufferClose<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>qq", "<cmd>BufferCloseAllButCurrent<CR>", { desc = "Close all other buffers" })
