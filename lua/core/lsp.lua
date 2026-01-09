local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

-- Add cmp capabilities for better completions
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Pyright (Python) - installed via Mason
lspconfig.pyright.setup({
  root_dir = util.find_git_ancestor,
  capabilities = capabilities,
})

-- Lua LS
lspconfig.lua_ls.setup({
  cmd = { "/opt/homebrew/bin/lua-language-server" },
  root_dir = util.find_git_ancestor,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
