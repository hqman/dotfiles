-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
--
--  Command+s 保存当前缓冲区/文件
keymap("n", "<D-s>", ":w<CR>", { noremap = true, silent = true })
keymap("i", "<D-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- save and quit
keymap("n", "<leader>w", ":w<CR>", { silent = true, noremap = true, desc = "Write File" })
keymap("i", "<leader>w", "<Esc>:w<CR>", { noremap = true, silent = true, desc = "Write File" })
keymap("n", "<leader>Q", ":quitall!<CR>", { silent = true, desc = "Quit Neovim" })
keymap("n", "<leader>W", ":wall<CR>", { silent = true, desc = "Write All" })
keymap("n", "<leader>tq", ":tabclose<CR>", { silent = true, desc = "Tab Close" })

keymap("n", "<C-x>", ":bd<CR>", { silent = true, noremap = true, desc = "close a  buffer" })
-- vim.keymap.set("n", "<C-n>", ":Neotree toggle<cr>")
-- Unmap mappings used by tmux plugin
-- TODO(vintharas): There's likely a better way to do this.
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

keymap("n", "<leader>j", ":bprev<CR>", { noremap = true, silent = true, desc = "move pre buffer" })
keymap("n", "<leader>k", ":bnext<CR>", { noremap = true, silent = true, desc = "move next buffer" })
