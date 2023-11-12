-- Vim options
local g = vim.g
local opt = vim.opt

-- Bri'ish :D
vim.spell.spelllang = "eu_gb"

g.mapleader = " "

-- Disable netrw, as suggested by nvim-tree
-- netrw is vim's built in file explorer
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Set tap width to 4
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Enable line number
opt.number = true

-- Unkeep terminal background colour
-- But fixes stuff with vim-transparent
opt.termguicolors = true

opt.swapfile = false
