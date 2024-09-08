local lspconfig = require 'lspconfig'

-- Javascript / Typescript
vim.g.markdown_fenced_languages = {
  'ts=typescript',
}
lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc'),
}

lspconfig.tsserver.setup {
  root_dir = lspconfig.util.root_pattern 'package.json',
  single_file_support = false,
}

-- Tailwindcss
lspconfig.tailwindcss.setup {}
