---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["jj"] = { "<ESC>" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["Q"] = { "<cmd> q! <CR>", opts = { silent = true } },
    ["<leader>s"] = { "1z=", opts = { silent = true } },
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>wk"] = { "<C-W>k", opts = { silent = true } },
    ["<leader>wj"] = { "<C-W>j", opts = { silent = true } },
    ["<leader>wh"] = { "<C-W>h", opts = { silent = true } },
    ["<leader>wl"] = { "<C-W>l", opts = { silent = true } },
  },
  v = {
    ["<"] = { '<gv', 'Move VISUAL selection left'},
    [">"] = { ">gv", 'Move VISUAL selection right'},
  },
}

-- more keybinds!

return M
