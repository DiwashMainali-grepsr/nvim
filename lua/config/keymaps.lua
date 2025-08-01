-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set keymap options
local opts = { noremap = true, silent = true }

-- Move code up and down
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>==", opts)

vim.keymap.set("i", "<C-BS>", "<C-w>", opts)
