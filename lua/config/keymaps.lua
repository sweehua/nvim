-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
-- split and buffer switching
map("n", "<S-Tab>", "<cmd>wincmd w<cr>", { desc = "SH Next Windows" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "SH Next Buffer" })
-- copy file path
map("n", "<C-C>f", "<cmd>let @+ = expand(\"%:p\")<CR>", { desc = "Copy full path" })
map("n", "<C-C>r", "<cmd>let @+ = expand(\"%\")<CR>", { desc = "Copy relative path" })
map("n", "<C-C>n", "<cmd>let @+ = expand(\"%:t\")<CR>", { desc = "Copy file name" })

-- undo back to last saved file
map({ "n", "i" }, "<A-C-u>", "<cmd>e!<CR>", { desc = "Reload back to last save state" })

-- vim-visual-multi - key conflict with lazyvim resize window
-- vim.keymap.set("n", "<A-Down>", "<cmd>call vm#commands#add_cursor_down(0,1)<CR>")
-- vim.keymap.set("n", "<A-Up>", "<cmd>call vm#commands#add_cursor_up(0,1)<CR>")
