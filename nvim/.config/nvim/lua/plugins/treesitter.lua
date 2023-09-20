return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "css",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<cr>",
        node_incremental = "g]",
        scope_incremental = "g]",
        node_decremental = "g[",
      },
    },
  },
  indent = {
    enable = true,
    disable = { "python" },
  },
}
