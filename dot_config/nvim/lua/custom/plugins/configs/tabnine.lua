local present, cmp = pcall(require, "cmp")

if not present then
   return
end


require('cmp_tabnine.config').setup({
   max_lines = 1000;
   max_num_results = 20;
   sort = true;
   run_on_every_keystroke = true;
   snippet_placeholder = '..';
   show_prediction_strength = false;
})

local sources = {
  { name = 'cmp_tabnine' },
}

cmp.setup {
   sources = sources,
}
