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
vim.keymap.set({ "n", "v" }, "<S-f>", "<S-e>", { desc = "go to end of word" })
vim.keymap.set("n", "sf", "de", { desc = "delete till end" })
vim.keymap.set("n", "cf", "ce", { desc = "cut till end" })
vim.keymap.set({ "n", "v" }, "k", "n", { desc = "next search entry" })
vim.keymap.set({ "n", "v" }, "k", "N", { desc = "previous search entry" })

vim.keymap.set("n", "y", "o", { desc = "new line after" })
vim.keymap.set("n", "Y", "O", { desc = "new line before" })

vim.keymap.set({ "n", "v" }, "u", "i", { desc = "insert before" })
vim.keymap.set({ "n", "v" }, "U", "I", { desc = "insert before line" })

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

-- show defintion
vim.keymap.set("", "<C-y>", "<Cmd>lua vim.diagnostic.open_float(nil, {focus=false})<CR>", { silent = true, desc = "show diagnostic" })

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function(_)
        vim.keymap.set("", "E", "<Cmd>lua vim.lsp.buf.hover()<CR>", { desc = "show defintion" })
    end
})

vim.keymap.set("n", "k", "n", { desc = "next highlight" })
vim.keymap.set("n", "K", "N", { desc = "previous highlight" })

-- quit binds
vim.keymap.set("n", "Q", "<Cmd>q!<CR>", { desc = "quit without saving" })
vim.keymap.set("n", "<C-q>", "<Cmd>wq<CR>", { desc = "save and quit" })
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>", { desc = "save buffer" })

-- quick fix
vim.keymap.set("n", "<Leader>y", "<Cmd>lua vim.lsp.buf.code_action({only = {'quickfix'}})<CR>", { desc = "show quick fixes" })

vim.keymap.set("n", "tn", "<C-W>h", { desc = "move split focus left" })
vim.keymap.set("n", "te", "<C-W>j", { desc = "move split focus down" })
vim.keymap.set("n", "ti", "<C-W>k", { desc = "move split focus up" })
vim.keymap.set("n", "to", "<C-W>l", { desc = "move split focus right" })

vim.keymap.set('n', '<bs>', ':bprevious<cr>', { silent = true })
vim.keymap.set('n', '<S-bs>', ':bnext<cr>', { silent = true })
