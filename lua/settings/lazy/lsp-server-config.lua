-- This is where we setup each langauge server
--  They each call lspconfig[server].setup( ... )
--  using the arguments provided below
return {
  -- clangd = {},
  -- gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`tsserver`) will work just fine
  -- tsserver = {},
  --
  lua_ls = {
    -- cmd = {...},
    -- filetypes = { ...},
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
  omnisharp = {
    cmd = {
      'omnisharp',
      '--languageserver',
      '--hostPID',
      tostring(vim.fn.getpid()),
    },
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
  },
  ts_ls = {
    -- root_dir = lspconfig.util.root_pattern('deno.json', 'deno.jsonc'),
    single_file_support = false,
  },
  tailwindcss = {},
  pylsp = {},
}
