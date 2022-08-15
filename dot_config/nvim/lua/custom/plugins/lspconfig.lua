local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "marksman",
  "volar",
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  -- Doesn't work, throws a lot of errors for Vue files
  -- filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
  init_options = {
    preferences = {
      -- disable annoying suggestions about implicit any and converting a file to ES6
      disableSuggestions = true,
    },
  },
}

-- local handle = io.popen("npm root -g")
-- local nodeModules = handle:read("*l")
-- handle:close()
-- local serverPath = nodeModules .. "/typescript/lib/tsserverlibrary.js"
-- lspconfig.volar.setup{
--   filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
--   init_options = {
--     typescript = {
--       serverPath = serverPath,
--       -- serverPath = '$jjj/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js',
--     },
--   },
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
