local overrides = require("custom.configs.overrides")

local edit_events =
  { "TextChanged", "TextChangedI", "BufEnter", "BufWinEnter", "BufLeave", "InsertEnter", "InsertChange", "InsertLeave" }

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  {
    "NvChad/nvterm",
    enabled = false,
  },
  {
    "folke/which-key.nvim",
    enabled = false,
  },

  {
    "codota/tabnine-nvim",
    event = edit_events,
    -- lazy = false,
    config = function()
      require("tabnine").setup {
        -- disable_auto_comment = true,
        accept_keymap = "<Right>",
        sort = true;
        run_on_every_keystroke = true;
        dismiss_keymap = "<Esc>",
        debounce_ms = 800,
        suggestion_color = { gui = "#872657", cterm = 5 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil, -- absolute path to Tabnine log file
        -- log_file_path = "/tmp/tabnine.log"
      }
    end,
    build = "./dl_binaries.sh",
    run = "./dl_binaries.sh",
  },

  -- Install a plugin
  -- {
  --   "max397574/better-escape.nvim",
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    after = "telescope.nvim",
    run = "make",
    config = function()
      require "custom.plugins.configs.fzf"
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
