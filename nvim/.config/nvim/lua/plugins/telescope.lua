-- change some telescope options and a keymap to browse plugin files
return {
  "nvim-telescope/telescope.nvim",
  -- install fzf native
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      -- change a keymap
     -- { "<C-p>", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      prompt_prefix = "   ",
      layout_config = {
        height = 0.8,
        width = 0.6,
        prompt_position = "top",
      },
      preview = { hide_on_startup = true },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
