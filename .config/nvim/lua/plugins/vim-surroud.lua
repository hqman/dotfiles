return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        normal = "ys",
        delete = "ds",
        visual = "Z",
        visual_line = "gS",
        change = "cs",
        change_line = "cS",
      },
    })
  end,
}
