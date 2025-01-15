local lsp = require('lsp-zero')

lsp.preset('recommended')

-- Install these servers
lsp.ensure_installed({
  'ts_ls',
  'eslint',
  'lua_ls',
})

-- Pass arguments to a language server
lsp.configure('ts_ls', {
  on_attach = function(client, bufnr)
    print('hello ts_ls')
  end,
  settings = {
    completions = {
      completeFunctionCalls = true
    }
  }
})

-- Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
