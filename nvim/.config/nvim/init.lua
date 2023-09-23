-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

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
