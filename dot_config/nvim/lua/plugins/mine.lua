local HOME = os.getenv("HOME")
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "storm" },
  },

  -- {
  --   "shanestillwell/edracula",
  --   lazy = false,
  --   priority = 1000,
  -- },

  -- Configure LazyVim to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = false,
                rangeVariableTypes = true,
              },
              analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
              semanticTokens = true,
            },
          },
        },
      },
      setup = {
        gopls = function(_, opts)
          -- workaround for gopls not supporting semanticTokensProvider
          -- https://github.com/golang/go/issues/54531#issuecomment-1464982242
          LazyVim.lsp.on_attach(function(client, _)
            if not client.server_capabilities.semanticTokensProvider then
              local semantic = client.config.capabilities.textDocument.semanticTokens
              client.server_capabilities.semanticTokensProvider = {
                full = true,
                legend = {
                  tokenTypes = semantic.tokenTypes,
                  tokenModifiers = semantic.tokenModifiers,
                },
                range = true,
              }
            end
          end, "gopls")
          -- end workaround
        end,
      },
    },
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    lsp_fallback = true,

    -- formatters = {
    --   goimports = {
    --     command = "goimports",
    --     args = { "-local", "code.test.live" },
    --   },
    -- },
    default_format_opts = {
      lsp_format = "fallback",
      -- async = true,
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { "stylua" },

      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      -- css = { "prettier" },
      -- html = { "prettier" },
      -- sql = { "sqlfluff" }, -- I liked this, but it had some unwanted behavior
      go = { "goimports", "gci", "gofmt" },

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
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "jq-lsp",
        "json-lsp",
        "lua-language-server",
        "markdown-toc",
        "markdownlint-cli2",
        "marksman",
        "proselint",
        "shfmt",
        "sqlfluff",
        "tsp-server",
        "yaml-language-server",

        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "curlylint",
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
        "gci",
        "golangci-lint",
        "golangci-lint-langserver",

        -- general
        "codespell",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },

  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
  },
}
