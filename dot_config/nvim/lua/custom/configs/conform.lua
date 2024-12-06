--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    -- sql = { "sqlfluff" }, -- I liked this, but it had some unwanted behavior

    sh = { "shfmt" },

    -- ["*"] = { "codespell" },
    -- Use the "_" filetype to run formatters on filetypes that don't
    -- have other formatters configured.
    ["_"] = { "trim_whitespace", "codespell" },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "fallback",
  },
}

require("conform").setup(options)
