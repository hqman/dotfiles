-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/
-- Add any additional options here
vim.wo.cursorline = true
vim.g.shiftround = true
vim.wo.number = true
vim.wo.colorcolumn = "80"

local opt = vim.opt
--  line auto wrap
opt.wrap = true
opt.linebreak = true
opt.number = false
vim.g.autoindent = true
vim.o.swapfile = false -- 禁用交换文件
