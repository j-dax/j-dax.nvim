return {
  'Kurama622/llm.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim' },
  cmd = { 'LLMSesionToggle', 'LLMSelectedTextHandler' },
  config = function()
    require('llm').setup()
  end,
  keys = {
    { '<leader>lt', mode = 'n', '<cmd>LLMSessionToggle<cr>' },
    -- { '<leader>le', mode = 'v', '<cmd>LLMSelectedTextHandler 请解释下面这段代码<cr>' }, -- Please explain the following code
    { '<leader>le', mode = 'v', '<cmd>LLMSelectedTextHandler Please explain the following code<cr>' },
    -- { '<leader>lt', mode = 'x', '<cmd>LLMSelectedTextHandler 英译汉<cr>' }, -- English to Chinese
  },
}
