return {
  { "projekt0n/github-nvim-theme" },
  -- tmux vim
  { "christoomey/vim-tmux-navigator" },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "which-key.nvim", enabled = false },
  { "mg979/vim-visual-multi" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark",
    },
  },
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    init = function()
      vim.o.mps = vim.o.mps .. ',<:>,":"'
    end,
    config = function()
      vim.g.matchup_matchparen_deferred = 1
      vim.g.matchup_matchparen_offscreen = { method = "status_manual" }
    end,
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
