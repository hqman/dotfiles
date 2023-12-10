return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    view = {
      width = "20%",
      side = "left",
    },
    filters = {
      dotfiles = false,
      custom = { "node_modules" },
    },
    actions = {
      open_file = {
        -- 首次打开大小适配
        resize_window = true,
        -- 打开文件时关闭
        quit_on_open = false,
      },
      change_dir = {
        enable = true,
        global = true,
      },
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
    },
  },
}
