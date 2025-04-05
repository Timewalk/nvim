require("plugins.lazy")


require("core.options")
require("core.keybinds")
require("core.dbconfig")


require('lspconfig').jedi_language_server.setup({
  cmd = { "/Users/jklarich/anaconda3/bin/jedi-language-server" },
  root_dir = require('lspconfig.util').find_git_ancestor,
})
