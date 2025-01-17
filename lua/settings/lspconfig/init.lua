local lspconfig = require 'lspconfig'

-- Javascript / Typescript
vim.g.markdown_fenced_languages = {
  'ts=typescript',
}
lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc'),
}
lspconfig.ts_ls.setup {
  root_dir = lspconfig.util.root_pattern 'package.json',
  single_file_support = false,
}
lspconfig.tailwindcss.setup {}

lspconfig.gopls.setup {}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
lspconfig.pylsp.setup {}

lspconfig.clangd.setup {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--log=verbose' },
  init_options = {
    fallbackFlags = { '-std=c++20' },
  },
}

lspconfig.omnisharp.setup {
  settings = {
    FormattingOptions = {
      -- Enables support for reading code style, naming convention and analyzer
      -- settings from .editorconfig.
      EnableEditorConfigSupport = true,
      -- Specifies whether 'using' directives should be grouped and sorted during
      -- document formatting.
      OrganizeImports = nil,
    },
  },
}
