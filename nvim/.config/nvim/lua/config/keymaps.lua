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
-- save and quit
keymap("n", "<leader>w", ":w<CR>", { silent = true, noremap = true, desc = "Write File" })
keymap("i", "<leader>w", "<Esc>:w<CR>", { noremap = true, silent = true, desc = "Write File" })
keymap("n", "<leader>Q", ":quitall!<CR>", { silent = true, desc = "Quit Neovim" })
keymap("n", "<leader>W", ":wall<CR>", { silent = true, desc = "Write All" })
keymap("n", "<leader>tq", ":tabclose<CR>", { silent = true, desc = "Tab Close" })

keymap("n", "<C-x>", ":bd<CR>", { silent = true, noremap = true, desc = "close a  buffer" })
-- Unmap mappings used by tmux plugin
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

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "toggle  file tree" })
-- vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
-- 定义一个用于执行 :qa 的快捷键（在这个例子中使用 Ctrl-Q）
keymap("n", "<C-Q>", ":qa<CR>", { noremap = true, silent = true })
