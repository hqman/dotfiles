-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/
-- Add any additional options here
vim.wo.cursorline = true
vim.g.shiftround = true
vim.wo.number = true
vim.wo.colorcolumn = "120"

--  line auto wrap
vim.opt.wrap = true
vim.opt.linebreak = true

vim.g.autoindent = true
-- 定义一个用于执行 :qa 的快捷键（在这个例子中使用 Ctrl-Q）
vim.api.nvim_set_keymap("n", "<C-Q>", ":qa<CR>", { noremap = true, silent = true })
