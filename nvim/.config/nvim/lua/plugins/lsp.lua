-- Setup null-ls with `black`
-- return {
--   "nvimtools/none-ls.nvim",
--   opts = function(_, opts)
--     local nls = require("none-ls")
--     opts.sources = vim.list_extend(opts.sources, {
--       -- Order of formatters matters. They are used in order of appearance.
--       nls.builtins.formatting.black,
--       -- nls.builtins.formatting.ruff,
--       -- nls.builtins.diagnostics.ruff,
--     })
--   end,
-- }
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.code_actions.gitsigns,
      nls.builtins.formatting.black,
      -- go
      -- nls.builtins.code_actions.impl,
      -- nls.builtins.code_actions.gomodifytags,
      -- nls.builtins.diagnostics.golangci_lint,
      -- ts
      nls.builtins.formatting.biome,
      -- require("typescript.extensions.null-ls.code-actions"),
      -- other
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.shfmt,
    })
    return opts
  end,
}
