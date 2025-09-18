vim.opt.number = true
vim.opt.relativenumber = true

-- split screen opens position
vim.opt.splitbelow = true
vim.opt.splitright = true

-- disable line wrapping
vim.opt.wrap = false

-- cursor grid thing
-- vim.opt.cursorcolumn = true
-- vim.opt.cursorline = true

-- spellchecking
-- vim.opt.spell = true

-- noswap
vim.opt.swapfile = false
vim.opt.backup = false       -- Disable backup files
vim.opt.writebackup = false  -- Disable write backups

-- use 24bit color
vim.opt.termguicolors = true

-- tab size stuff
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.virtualedit = "block"

-- system synchronised clipboard
vim.opt.clipboard = "unnamedplus"

-- keep cursor in middle
-- vim.opt.scrolloff = 999

-- preview changes in split
vim.opt.inccommand = "split"

-- command ignore case
vim.opt.ignorecase = true

-- leader key
vim.g.mapleader = " "

vim.diagnostic.enable = true

-- enable folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.api.nvim_create_autocmd("BufWinLeave", {
  pattern = "*.*",
  desc = "save view (folds), when closing file",
  command = "mkview"
})

vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.*",
    desc = "Load view after buffer is fully loaded",
    callback = function()
        local function setup_fold()
            vim.wo.foldlevel = 99
            vim.cmd("silent! loadview")
        end

        if vim.bo.filetype ~= '' then
            setup_fold()
        else
            vim.defer_fn(setup_fold, 0)
        end
    end,
})
