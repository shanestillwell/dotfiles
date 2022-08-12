-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)
local opt = vim.opt

opt.relativenumber = true
opt.noswapfile = true
opt.spellang = 'en'
opt.spellfile = '/Users/shane/.vim/spell/en.utf-8.add'
opt.encoding = 'UTF-8'
opt.iskeyword = '@,48-57,_,-,192-255'
