vim.keymap.set({ "n", "v" }, "n", "h", { desc = "move left" })
vim.keymap.set({ "n", "v" }, "e", "j", { desc = "move down" })
vim.keymap.set({ "n", "v" }, "i", "k", { desc = "move up" })
vim.keymap.set({ "n", "v" }, "o", "l", { desc = "move right" })

vim.keymap.set({ "n", "v" }, "dd", "gg", { desc = "go to top" })
vim.keymap.set({ "n", "v" }, "D", "G", { desc = "go to end" })

vim.keymap.set({ "n", "v" }, "=D", "=G", { desc = "format to end" })
vim.keymap.set({ "n", "v" }, "=dd", "=gg", { desc = "format to beginning" })
vim.keymap.set({ "n", "v" }, "=f", "=f", { desc = "format to end of line" })

vim.keymap.set({ "n", "v" }, "f", "e", { desc = "go to end of word" })
vim.keymap.set("n", "sf", "de", { desc = "delete till end" })
vim.keymap.set("n", "cf", "ce", { desc = "cut till end" })
vim.keymap.set({ "n", "v" }, "k", "n", { desc = "next search entry" })
vim.keymap.set({ "n", "v" }, "k", "N", { desc = "previous search entry" })

vim.keymap.set("n", "y", "o", { desc = "new line after" })
vim.keymap.set("n", "Y", "O", { desc = "new line before" })

vim.keymap.set("n", "u", "i", { desc = "insert before" })
vim.keymap.set("n", "U", "I", { desc = "insert before line" })

vim.keymap.set("v", "j", "y", { desc = "yank selected" })
vim.keymap.set("n", "j", "yy", { desc = "yank line" })

vim.keymap.set("n", "s", "d", { desc = "delete remap", remap = true })
vim.keymap.set("n", "ss", "dd", { desc = "delete remap" })
-- vim.keymap.set("v", "s", "x", { desc = "delete selected", nowait = true }) -- maps to d
-- use x instead
vim.keymap.set({ "n", "v" }, ";", "p", { desc = "paste after" })
vim.keymap.set({ "n", "v" }, ":", "P", { desc = "paste before" })

vim.keymap.set("v", "l", "Esc", { desc = "normal mode" })
vim.keymap.set("n", "l", "u", { desc = "undo" })
vim.keymap.set("n", "<C-p>", "<C-r>", { desc = "redo" })
vim.keymap.set({ "n", "v" }, "p", "r", { desc = "basic replace" })
vim.keymap.set("n", "P", "R", { desc = "insert replace" })


vim.keymap.set("", "O", ":", { desc = "command mode" })
