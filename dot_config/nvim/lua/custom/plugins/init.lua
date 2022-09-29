local plugin_overrides = require("custom.plugins.override")
local cmpConfigs = require("custom.plugins.configs.cmp")

return {
  ["hrsh7th/nvim-cmp"] = {
    override_options = cmpConfigs.cmp,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = plugin_overrides.treesitter,
  },
  ["williamboman/mason.nvim"] = {
    override_options = plugin_overrides.mason,
  },
  ["NvChad/nvterm"] = false,
  ["tpope/vim-fugitive"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    after = "telescope.nvim",
    run = "make",
    config = function()
      require "custom.plugins.configs.fzf"
    end,
  },
  ["tzachar/cmp-tabnine"] = {
    after = "nvim-cmp",
    run = "./install.sh",
    config = cmpConfigs.tabnine
  },
}
