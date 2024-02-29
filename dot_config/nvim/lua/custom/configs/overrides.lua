local M = {}

M.treesitter = {
  auto_install = true,
  sync_install = true,
  highlight = {
    enable = true,
    disable = {},
  },
  autotag = {
    enable = false,
  },
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.trouble = {
  auto_open = true,
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint-lsp",
    "eslint_d",
    "vue-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- go
    "gopls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  filters = {
    git_ignored = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
