---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>" },
  },
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["Q"] = { "<cmd> q! <CR>", opts = { silent = true } },
    ["<leader>s"] = { "1z=", opts = { silent = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    ["<leader>fu"] = { "<cmd> Telescope resume <CR>", "resume search" },
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "find files" },
    ["<leader>wk"] = { "<C-W>k", opts = { silent = true } },
    ["<leader>wj"] = { "<C-W>j", opts = { silent = true } },
    ["<leader>wh"] = { "<C-W>h", opts = { silent = true } },
    ["<leader>wl"] = { "<C-W>l", opts = { silent = true } },
    -- ["<leader>fs"] = {
    --   function()
    --     require("telescope").builtin.grep_string()
    --   end,
    -- },
  },
  v = {
    ["<"] = { '<gv', 'Move VISUAL selection left'},
    [">"] = { ">gv", 'Move VISUAL selection right'},
  },
}

-- more keybinds!

return M
