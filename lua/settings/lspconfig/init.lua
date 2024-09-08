local lspconfig = require 'lspconfig'
--
-- Javascript / Typescript
vim.g.markdown_fenced_languages = {
  'ts=typescript',
}
lspconfig.denols.setup {
  on_attach = function()
    print 'Deno loaded'
  end,
  root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc'),
}

lspconfig.tsserver.setup {
  on_attach = function()
    print 'TSServer loaded'
  end,
  root_dir = lspconfig.util.root_pattern 'package.json',
  single_file_support = false,
}
