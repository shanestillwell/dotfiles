local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   -- webdev stuff
   b.code_actions.eslint,
   b.formatting.eslint,
   b.diagnostics.eslint,

   b.code_actions.gitsigns,

   -- Lua
   b.formatting.stylua,

   -- Jinja / Nunjucks
   -- b.formatting.djlint,
   -- b.formatting.djhtml,
   -- b.diagnostics.curlylint,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
