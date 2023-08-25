-- Setup null-ls with `black`
return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = vim.list_extend(opts.sources, {
      -- Order of formatters matters. They are used in order of appearance.
      nls.builtins.formatting.black,
      -- nls.builtins.formatting.ruff,
      -- nls.builtins.diagnostics.ruff,
    })
  end,
}