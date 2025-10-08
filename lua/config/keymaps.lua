-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Option+Backspace to delete word backwards
-- First enable "Use option as meta key" in Terminal preferences
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete word backwards" })
vim.keymap.set("i", "<Esc><BS>", "<C-w>", { desc = "Delete word backwards" })
-- Alternative mapping for terminals that send different sequences
vim.keymap.set("i", "<C-h>", "<C-w>", { desc = "Delete word backwards" })

-- Command+Space to delete entire line
vim.keymap.set("i", "<D-Space>", "<Esc>ddi", { desc = "Delete entire line" })
vim.keymap.set("n", "<D-Space>", "dd", { desc = "Delete entire line" })
