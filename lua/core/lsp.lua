local lspconfig = require('lspconfig')
local util = require('lspconfig.util')

-- Jedi (Python)
lspconfig.jedi_language_server.setup({
  cmd = { vim.fn.stdpath("config") .. "/.venv/bin/jedi-language-server" },
  root_dir = util.find_git_ancestor,
})

-- Lua LS
lspconfig.lua_ls.setup({
  cmd = { "/opt/homebrew/bin/lua-language-server" },
  root_dir = util.find_git_ancestor,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
