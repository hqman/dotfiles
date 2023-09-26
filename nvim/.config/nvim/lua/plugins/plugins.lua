return {
  -- tmux vim
  { "christoomey/vim-tmux-navigator" },
  { "which-key.nvim", enabled = true },
  { "mg979/vim-visual-multi" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cobalt2",
    },
  },
  { "echasnovski/mini.surround", enabled = false },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        --disable f mode
        char = { enabled = false },
      },
    },
  },
}
