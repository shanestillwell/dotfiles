-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "chadracula",
}

M.options = {
  undofile = false,
}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

-- Toggle the relative when entering insert mode
vim.cmd([[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]])

vim.cmd([[
  set isk+=-
  set nobackup
  set noswapfile
  set noundofile
  set undoreload=0
]])

return M
