return {
  "lalitmee/cobalt2.nvim",
  event = { "ColorSchemePre" }, -- if you want to lazy load
  dependencies = { "tjdevries/colorbuddy.nvim" },
  init = function()
    require("colorbuddy").colorscheme("cobalt2")
  end,
}

-- return {
--   "projekt0n/github-nvim-theme",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     require("github-theme").setup({
--       -- ...
--     })
--     vim.cmd("colorscheme github_light")
--   end,
-- }
