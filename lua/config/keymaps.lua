-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-p>", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-n>", "<Cmd>bNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-x>", "<Cmd>bdelete<CR>")
vim.keymap.set("n", "<C-w>gd", "<cmd>vsplit | normal gD<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "q", "<nop>", { desc = "Disable recording in normal mode" })
