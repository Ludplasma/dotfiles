-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ======================
-- AI
-- ======================

-- Codeium
vim.keymap.set("n", "<leader>at", "<cmd>Codeium Toggle<cr>", { desc = "AI Toggle Codeium" })

vim.keymap.set("v", "<leader>aa", "<cmd>AvanteAsk<cr>", { silent = true, desc = "AI ask selection" })
vim.keymap.set("n", "<leader>ae", "<cmd>AvanteEdit<cr>", { desc = "AI Edit file" })
vim.keymap.set("v", "<leader>ae", "<cmd>AvanteEdit<cr>", { desc = "AI Edit selection" })
vim.keymap.set("n", "<leader>ad", "<cmd>AvanteToggle<cr>", { desc = "AI Toggle Avante" })
