local keymap = vim.keymap

-- Remap directional keys
keymap.set("", "n", "h", { desc = "Move cursor right" })
keymap.set("", "e", "j", { desc = "Move cursor down" })
keymap.set("", "i", "k", { desc = "Move cursor up" })
keymap.set("", "o", "l", { desc = "Move cursor left" })

-- GG
keymap.set({ "n", "v" }, "dd", "gg", { desc = "Move cursor to top" })
keymap.set({ "n", "v" }, "<S-d>", "<S-g>", { desc = "Move cursor to bottom" })

-- Remap entering insert mode
keymap.set("n", "u", "i", { desc = "Enter insert mode" })
keymap.set("n", "<S-U>", "<S-I>", { desc = "Enter insert mode in beginning of line" })
keymap.set("n", "y", "o", { desc = "Enter insert mode in new line" })
keymap.set("n", "<S-Y>", "<S-O>", { desc = "Enter insert mode in previous line" })
keymap.set("n", "<S-P>", "<S-R>", { desc = "Replace following" })
keymap.set("n", "P", "R", { desc = "Replace character" })

-- Work seek
keymap.set({ "n", "v" }, "f", "e", { desc = "Seek to end of next word" })

-- History
keymap.set("n", "l", "u", { desc = "Undo last action" })
keymap.set("n", "<C-P>", "<C-R>", { desc = "Redo next action" })

-- Copy pasting
keymap.set({ "n", "v" }, "j", "y", { desc = "Yank" })
keymap.set({ "n", "v" }, ";", "p", { desc = "Paste" })
keymap.set({ "n", "v" }, "<S-;>", "<S-p>", { desc = "Paste" })
keymap.set({ "n", "v" }, "<leader>;", "<S-P>", { desc = "Paste before" })
keymap.set({ "n" }, "ss", "dd", { desc = "Delete line"})
keymap.set("v", "s", "d", { desc = "Delete selection"})

-- <C-W> change focus
keymap.set("n", "vn", "<C-W>h", { desc = "Move focus to left" })
keymap.set("n", "ve", "<C-W>j", { desc = "Move focus to down" })
keymap.set("n", "vi", "<C-W>k", { desc = "Move focus to up" })
keymap.set("n", "vo", "<C-W>l", { desc = "Move focus to right" })
