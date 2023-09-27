-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Automate sourcing .tmux.conf after saving it from Neovim
vim.api.nvim_exec(
  [[
  augroup TmuxAutoSource
      autocmd!
      autocmd bufwritepost .tmux.conf execute ':!tmux source-file %'
  augroup END
]],
  false
)
-- Automate sourcing .tmux.conf after saving it from Neovim
vim.api.nvim_exec(
  [[
  augroup TmuxAutoSource
      autocmd!
      autocmd bufwritepost tmux.conf execute ':!tmux source-file %'
  augroup END
]],
  false
)
